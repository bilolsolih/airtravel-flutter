class SpecialOfferModel {
  final int id;
  final int order;
  final String image;

  SpecialOfferModel({
    required this.id,
    required this.order,
    required this.image,
  });

  factory SpecialOfferModel.fromJson(Map<String, dynamic> json) {
    return SpecialOfferModel(
      id: json['id'],
      order: json['order'],
      image: json['image'],
    );
  }
}
