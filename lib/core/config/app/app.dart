import 'package:graphql_test/ui/view/detail/detail_view.dart';
import 'package:graphql_test/ui/view/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';



@StackedApp(
  routes:[
    MaterialRoute(page: HomeView,initial: true),
    MaterialRoute(page: DetailsView),
  ]
)


class App{
   //empty class, will be filled after code generation
}