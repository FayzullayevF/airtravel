import 'package:treval_app/BatafsilPage/data/models/batafsil_page_body_model.dart';
import 'package:treval_app/core/client.dart';

class BatafsilPageRepository{
  BatafsilPageRepository({
    required this.client
});
  final ApiClient client;
  late BatafsilPageBodeyModel model;

  Future<BatafsilPageBodeyModel> fetchPackageById(int packageId) async{
    var rawPackage = await client.fetchPackageById(packageId);
    model = BatafsilPageBodeyModel.fromJson(rawPackage);
    return model;
  }
}