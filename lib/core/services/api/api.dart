import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql_test/core/model/country_model.dart';

abstract class Api {
  Future<QueryResult<Countries>> getCountries(QueryOptions<Countries> query);
}
