import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_test/core/model/country_model.dart';
import 'package:graphql_test/core/services/api/api_provider.dart';

class CountryService {
  final ApiProvider _apiProvider;
  CountryService(this._apiProvider);

  Future<QueryResult<Countries>> getCountries(QueryOptions<Countries> query) {
   return _apiProvider.getCountries(query);
  }
}
