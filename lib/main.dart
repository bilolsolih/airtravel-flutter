import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/onboarding/presentation/pages/onboarding_view.dart';
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

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      home: OnboardingView(),
    );
  }
}

/*


PackageDetailView(
        viewModel: PackageDetailViewModel(
          repo: PackageRepository(
            client: ApiClient(),
          ),
        ),
      )


      HomeView(
        viewModel: HomeViewModel(
          specOffRepo: SpecialOffersRepository(
            client: ApiClient(),
          ),
          popPlaceRepo: PopularPlacesRepository(
            client: ApiClient(),
          ),
        ),
      )
*/
