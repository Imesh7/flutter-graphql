import 'package:graphql_flutter/graphql_flutter.dart';

class ApiClient {
  final GraphQLClient graphQLClient = GraphQLClient(
    link: HttpLink("https://countries.trevorblades.com/graphq"), 
    cache: GraphQLCache());
}
