import 'package:flutter/cupertino.dart';
import 'package:treval_app/BatafsilPage/data/models/batafsil_page_body_model.dart';
import 'package:treval_app/BatafsilPage/data/repositories/batafsil_page_body_repository.dart';

class BatafsilPageViewModel extends ChangeNotifier{
  BatafsilPageViewModel({
    required BatafsilPageRepository repo,
}): _repo = repo;


  final BatafsilPageRepository _repo;
  bool loading = true;
  BatafsilPageBodeyModel? model;

  Future<void> load(int detailId) async{
    model = await _repo.fetchPackageById(detailId);
    loading = false;
    notifyListeners();
  }
}