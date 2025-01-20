import 'package:flutter/material.dart';
import 'package:travel_app/package_detail/data/models/package_detail_model.dart';

import '../../data/repositories/package_repository.dart';

class PackageDetailViewModel extends ChangeNotifier {
  PackageDetailViewModel({required PackageRepository repo}) : _repo = repo {
    load(1);
  }

  final PackageRepository _repo;

  late PackageDetailModel package;

  bool loading = true;

  Future<void> load(int packageId) async {
    package = await _repo.fetchPackageById(packageId);
    loading = false;
    notifyListeners();
  }
}
