import 'package:travel_app/core/client.dart';
import 'package:travel_app/home/data/models/popular_place_model.dart';

class PopularPlacesRepository {
  PopularPlacesRepository({required this.client});

  final ApiClient client;

  List<PopularPlaceModel> popularPlaces = [];

  Future<List<PopularPlaceModel>> fetchPopularPlaces() async {
    if (popularPlaces.isNotEmpty) return popularPlaces;

    var rawPopularPlaces = await client.fetchPopularPlaces();
    popularPlaces = rawPopularPlaces.map((place) => PopularPlaceModel.fromJson(place)).toList();
    popularPlaces.sort((a, b) => a.order - b.order);
    return popularPlaces;
  }
}
