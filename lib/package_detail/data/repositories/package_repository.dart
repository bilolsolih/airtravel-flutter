import 'package:travel_app/core/client.dart';
import 'package:travel_app/package_detail/data/models/package_detail_model.dart';

class PackageRepository {
  PackageRepository({required this.client});

  final ApiClient client;

  late PackageDetailModel package;

  Future<PackageDetailModel> fetchPackageById(int packageId) async {
    var rawPackage = await client.fetchPackageById(packageId);
    package = PackageDetailModel.fromJson(rawPackage);
    return package;
  }
}
