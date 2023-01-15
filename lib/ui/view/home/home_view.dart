import 'package:flutter/material.dart';
import 'package:graphql_test/ui/view/home/home_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: viewModel.busy(viewModel.countries)
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: viewModel.countries!.countries!.length,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${index + 1}. ${viewModel.countries!.countries![index]!.name.toString()}",
                                style: const TextStyle(fontSize: 15),
                              ),
                            )),
                  )
                ],
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.onTapNavigation(),
      ),
    );
  }

  @override
  viewModelBuilder(BuildContext context) => HomeViewModel(Provider.of(context));

  @override
  void onViewModelReady(HomeViewModel viewModel) => viewModel.init();
}
