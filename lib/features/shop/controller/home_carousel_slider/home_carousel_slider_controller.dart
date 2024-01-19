import 'package:get/get.dart';

class HomeCarouselSliderController extends GetxController {
  static HomeCarouselSliderController get instance => Get.find();
  Rx<int> currentIndex = 0.obs;
  // update value
  void updateIndicator(index) => currentIndex.value = index;
}
