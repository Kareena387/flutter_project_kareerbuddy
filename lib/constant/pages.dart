import 'package:kareerbuddy/controllers/home_page_controller.dart';
import 'package:kareerbuddy/controllers/recipe_controller.dart';
import 'package:kareerbuddy/views/home_page.dart';
import 'package:kareerbuddy/views/recipe_details_page.dart';
import 'package:get/get.dart';

final List<GetPage> getPages = <GetPage>[
  GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => HomePageController());
      })),
  GetPage(
      name: RecipeDetailsPage.routeName,
      page: () => RecipeDetailsPage(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => RecipeController());
      })),
];