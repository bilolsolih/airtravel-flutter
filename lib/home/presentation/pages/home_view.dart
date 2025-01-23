import 'package:flutter/material.dart';
import 'package:travel_app/core/core.dart';
import 'package:travel_app/home/presentation/widgets/discount_packages.dart';
import 'package:travel_app/home/presentation/widgets/tour_package/tour_package_item.dart';

import '../widgets/popular_places.dart';
import '../widgets/special_offers.dart';
import '../widgets/travel_search_bar.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) => ListView(
          children: [
            const TravelSearchBar(),
            const SizedBox(height: 20),
            SpecialOffers(specialOffers: viewModel.specialOffers),
            const SizedBox(height: 20),
            PopularPlaces(places: viewModel.popularPlaces),
            const SizedBox(height: 20),
            DiscountPackages(),
            SizedBox(height: 20),
            TourPackageItem(),
            SizedBox(height: 20),
            TourPackageItem(),
            SizedBox(height: 20),
            TourPackageItem(),
            SizedBox(height: 20),
            TourPackageItem(),
            // const TourPackageItem(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
