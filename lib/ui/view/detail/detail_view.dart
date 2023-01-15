import 'package:flutter/material.dart';
import 'package:graphql_test/ui/view/detail/detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DetailsView extends StackedView<DetailsViewModel> {
  const DetailsView({super.key});

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Text("data")],
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) => DetailsViewModel();
}
