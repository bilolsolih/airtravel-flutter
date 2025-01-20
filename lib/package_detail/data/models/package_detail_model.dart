import 'dart:core';

import 'package:travel_app/package_detail/data/models/day_model.dart';
import 'package:travel_app/package_detail/data/models/feature_model.dart';
import 'package:travel_app/package_detail/data/models/stay_model.dart';
import 'package:travel_app/package_detail/data/models/tariff_model.dart';

class PackageDetailModel {
  final int id;
  final String title;
  final String description;
  final List<String> images;
  final DateTime startDate, endDate;
  final List<StayModel> stays;
  final List<FeatureModel> features;
  final List<TariffModel> tariffs;
  final List<DayModel> calendar;

  PackageDetailModel({
    required this.id,
    required this.title,
    required this.description,
    required this.images,
    required this.startDate,
    required this.endDate,
    required this.stays,
    required this.features,
    required this.tariffs,
    required this.calendar,
  });

  factory PackageDetailModel.fromJson(Map<String, dynamic> json) {
    return PackageDetailModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      images: json['images'],
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      stays: (json['stays'] as List<dynamic>).map((stay) => StayModel.fromJson(stay)).toList(),
      features: (json['features'] as List<dynamic>).map((feature) => FeatureModel.fromJson(feature)).toList(),
      tariffs: (json['tariffs'] as List<dynamic>).map((tariff) => TariffModel.fromJson(tariff)).toList(),
      calendar: (json['calendar'] as List<dynamic>).map((day) => DayModel.fromJson(day)).toList(),
    );
  }
}
