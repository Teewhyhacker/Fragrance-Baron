
import 'package:flutter/material.dart';
import 'package:fragrancebaron/features/shop/screens/home/home_screen.dart';
import 'package:fragrancebaron/utils/constants/colors.dart';
import 'package:fragrancebaron/utils/helper/helper_functions.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = FBHelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: dark ? FBColor.black : FBColor.white,
            indicatorColor:dark?FBColor.darkGrey.withOpacity(0.5): FBColor.primary.withOpacity(0.5),
            
            height: 50.0,
            elevation: 0,
            selectedIndex: controller.currentIndex.value,
            onDestinationSelected: (index) =>
                controller.onSelectNavigationPage(index),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ]),
      ),
      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  Rx<int> currentIndex = 0.obs;

  void onSelectNavigationPage(index) {
    currentIndex.value = index;
   
  }

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.pink,
    ),
  ];
}
