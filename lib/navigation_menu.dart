import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:quickmart/features/personalization/screens/profile%20screen/profileScreen.dart';
import 'package:quickmart/features/shop/screens/home/homeScreen.dart';
import 'package:quickmart/features/shop/screens/store/storeScreen.dart';
import 'package:quickmart/features/shop/screens/wishlist/wishlistScreen.dart';

class navigationMenu extends StatelessWidget {
  const navigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          indicatorColor: Colors.cyan.shade50,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: SafeArea(child: Obx(() => controller.screens[controller.selectedIndex.value])),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const homeScreen(),

    const storeScreen(),

    const wishlistScreen(),

    const profileScreen(),
  ];
}
