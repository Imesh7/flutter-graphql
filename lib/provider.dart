import 'package:graphql_test/core/services/api/api_client.dart';
import 'package:graphql_test/core/services/api/api_provider.dart';
import 'package:graphql_test/core/services/providers/country_service.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> list = [
    ...independentService,
    ...dependentService
  ];

   List<SingleChildWidget> independentService = [
    Provider.value(value: ApiClient())
   ];

   List<SingleChildWidget> dependentService = [
    ProxyProvider<ApiClient, ApiProvider>(
      update: (context, apiClient, apiProvider) => ApiProvider(apiClient),
    ),
    ProxyProvider<ApiProvider, CountryService>(
      update: (context, api, service) => CountryService(api),
    )
  ];
