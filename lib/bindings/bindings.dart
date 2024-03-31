import 'package:get/get.dart';
import 'package:newprojects/controllers/chooseProductPageController.dart';

import '../controllers/recomendedPageController.dart';

class GetxControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedPageController(), fenix: true);
    Get.lazyPut(() => ChooseProductPageController(), fenix: true);
  }
}
