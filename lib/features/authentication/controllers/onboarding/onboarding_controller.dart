import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/authentication/screens/login/login.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
// VARIABLES
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
// UPDATE CURRRENT INDEX WHEN PAGE SCROLL
  void updatePageIndicator(index) => currentPageIndex.value = index;

// JUMP TO THE SPECIFIC DOT SELECTED PAGE
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // UPDATE CURRENNT INDEX AND JUMP TO THE NEXT PAGE
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // UPDATE CURRENNT INDEX AND JUMP TO THE LAST PAGE
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
