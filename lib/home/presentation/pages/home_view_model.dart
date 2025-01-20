import 'package:flutter/material.dart';

import '../../data/models/popular_place_model.dart';
import '../../data/models/special_offer_model.dart';
import '../../data/repositories/popular_places_repository.dart';
import '../../data/repositories/special_offers_repository.dart';

class HomeViewModel extends ChangeNotifier {
  HomeViewModel({
    required SpecialOffersRepository specOffRepo,
    required PopularPlacesRepository popPlaceRepo,
  })  : _specOffRepo = specOffRepo,
        _popPlaceRepo = popPlaceRepo {
    load();
  }

  final SpecialOffersRepository _specOffRepo;
  final PopularPlacesRepository _popPlaceRepo;

  List<SpecialOfferModel> specialOffers = [];
  List<PopularPlaceModel> popularPlaces = [];

  Future<void> load() async {
    specialOffers = await _specOffRepo.fetchSpecialOffers();
    popularPlaces = await _popPlaceRepo.fetchPopularPlaces();
    notifyListeners();
  }
}
