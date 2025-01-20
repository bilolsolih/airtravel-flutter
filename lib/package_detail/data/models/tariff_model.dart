import 'feature_model.dart';

class TariffModel {
  final int id;
  final String title;
  final int priceAfter, priceBefore;
  final List<FeatureModel> features;

  TariffModel({
    required this.id,
    required this.title,
    required this.priceAfter,
    required this.priceBefore,
    required this.features,
  });

  factory TariffModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> rawFeatures = json['features'];
    return TariffModel(
      id: json['id'],
      title: json['title'],
      priceAfter: json['priceAfter'],
      priceBefore: json['priceBefore'],
      features: rawFeatures.map((feature) => FeatureModel.fromJson(feature)).toList(),
    );
  }
}
