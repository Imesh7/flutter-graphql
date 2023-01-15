import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.I;

void initializeLocator(){
locator.registerLazySingleton(() => NavigationService());
}
