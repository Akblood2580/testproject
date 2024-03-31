
import 'package:get/get.dart';
import 'package:newprojects/view/ServicePage/recommendedServicePage.dart';
import 'package:newprojects/view/choseProductCategory.dart';

import '../bindings/bindings.dart';

import 'appRoutes.dart';

class AppPage {
  AppPage._();

  static const INITIAL = Routes.SERVICE;

  static final routes = [
    GetPage(
        name: "/service",
        page: (() => RecommendedServicePage()),
        binding: GetxControllerBindings()),
    GetPage(
        name: "/chooseProduct",
        page: (() => ChooseProductCategoryPage()),
        binding: GetxControllerBindings()),
  ];
}
