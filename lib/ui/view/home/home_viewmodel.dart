import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_test/core/config/app/app.router.dart';
import 'package:graphql_test/core/model/country_model.dart';
import 'package:graphql_test/core/services/providers/country_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  CountryService _countryService;
  Countries? countries = null;
  NavigationService _navigationService = GetIt.I.get();

  HomeViewModel(this._countryService);

  init() async {
    setBusyForObject(countries, true);
    QueryResult<Countries?> result = await _countryService
        .getCountries(QueryOptions(document: gql(readRepositories)));

    if (result.data!.isNotEmpty) {
      countries = Countries.fromMap(result.data!);
      setBusyForObject(countries, false);

    }
  }

  onTapNavigation() {
    _navigationService.navigateTo(Routes.detailsView);
  }

  String readRepositories = """
  query {
  countries{
    code,
    currency,
    name
  }
}
""";
}
