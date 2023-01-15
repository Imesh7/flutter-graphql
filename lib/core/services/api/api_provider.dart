import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_test/core/model/country_model.dart';
import 'package:graphql_test/core/services/api/api.dart';
import 'package:graphql_test/core/services/api/api_client.dart';

class ApiProvider extends Api {
  ApiClient _apiClient;

  ApiProvider(this._apiClient);

  @override
  Future<QueryResult<Countries>> getCountries(QueryOptions<Countries> query) async {
    // TODO: implement getCountries
   return _apiClient.graphQLClient.query<Countries>(query);
    
  }
}
