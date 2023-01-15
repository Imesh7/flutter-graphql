import 'package:flutter/material.dart';
import 'package:graphql_test/core/config/app/app.router.dart';

import 'package:graphql_test/provider.dart';
import 'package:provider/provider.dart';
import 'package:stacked_services/stacked_services.dart';

import 'locator.dart';

void main() {
  initializeLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: list,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Graphql flutter sample',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            navigatorKey: StackedService.navigatorKey,
            onGenerateRoute: StackedRouter().onGenerateRoute,
          );
        });
  }
}
