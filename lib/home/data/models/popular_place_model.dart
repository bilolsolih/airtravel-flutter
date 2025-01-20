class PopularPlaceModel {
  final int id;
  final int order;
  final String image, title;

  PopularPlaceModel({
    required this.id,
    required this.order,
    required this.image,
    required this.title,
  });

  factory PopularPlaceModel.fromJson(Map<String, dynamic> json) {
    return PopularPlaceModel(
      id: json['id'],
      order: json['order'],
      image: json['image'],
      title: json['title'],
    );
  }
}
