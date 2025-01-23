import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/auth/presentation/pages/initial_page_view.dart';
import 'package:travel_app/auth/presentation/pages/register_view.dart';
import 'package:travel_app/auth/presentation/pages/register_view_model.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/onboarding/presentation/pages/onboarding_view.dart';
import 'package:travel_app/onboarding/presentation/pages/welcome_page_view.dart';
import 'package:travel_app/package_detail/presentation/pages/package_detail_view.dart';

import 'home/data/repositories/popular_places_repository.dart';
import 'home/data/repositories/special_offers_repository.dart';
import 'home/presentation/pages/home_view.dart';
import 'home/presentation/pages/home_view_model.dart';
import 'package_detail/data/repositories/package_repository.dart';
import 'package_detail/presentation/pages/package_detail_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const TravelApp());
}

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/welcome',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        child: WelcomePageView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(
              Tween<Offset>(begin: Offset(-1, 0), end: Offset.zero).chain(
                CurveTween(curve: Curves.easeInOut),
              ),
            ),
            child: child,
          );
        },
      ),
      routes: [
        GoRoute(
          path: '/onboarding',
          builder: (context, state) => OnboardingView(),
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => InitialPageView(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterPageView(
        viewModel: RegisterViewModel(),
      ),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) {
        return HomeView(
          viewModel: HomeViewModel(
            specOffRepo: context.read(),
            popPlaceRepo: context.read(),
          ),
        );
      },
    ),
  ],
);

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => ApiClient(),
        ),
        Provider(
          create: (context) => SpecialOffersRepository(client: context.read()),
        ),
        Provider(
          create: (context) => PopularPlacesRepository(client: context.read()),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        routerConfig: router,
      ),
    );
  }
}
