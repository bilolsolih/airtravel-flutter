class StayModel {
  final int days;
  final String city;
  final int order;

  StayModel({
    required this.days,
    required this.city,
    required this.order,
  });

  factory StayModel.fromJson(Map<String, dynamic> json) {
    return StayModel(
      days: json['days'],
      city: json['city'],
      order: json['order'],
    );
  }
}
