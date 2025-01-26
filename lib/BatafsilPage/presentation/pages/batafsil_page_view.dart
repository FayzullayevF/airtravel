import 'package:flutter/material.dart';
import 'package:treval_app/BatafsilPage/presentation/pages/batafsil_page_view_model.dart';

class BatafsilMainPage extends StatelessWidget {
  const BatafsilMainPage({
    super.key,
    required this.viewModel,
  });

  final BatafsilPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, widget) => switch (viewModel.loading) {
              true => Center(
                  child: CircularProgressIndicator(),
                ),
              false => Scaffold(

                ),
            });
  }
}
