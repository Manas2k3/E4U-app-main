import 'package:e4u/presentation/screens/home_screen.dart';
import 'package:e4u/presentation/screens/premium_section/premium_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Colors.transparent), // Remove border if needed
            ),
          ),
          child: NavigationBar(
            backgroundColor: Colors.transparent,
            // Fully transparent
            height: 80,
            elevation: 0,
            // No shadow
            selectedIndex: controller.selectedIndex.value,
            indicatorColor: Colors.transparent,
            // Remove selection indicator
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              _navItem(
                  Iconsax.home, "Home", controller.selectedIndex.value == 0),
              _navItem(Iconsax.music_library_2, "Your Library",
                  controller.selectedIndex.value == 1),
              _navItem(Iconsax.dollar_circle, "Premium",
                  controller.selectedIndex.value == 2),
            ],
          ),
        ),
      ),
      body: Obx(
        () => AnimatedSwitcher(
          duration: Duration(milliseconds: 300),
          child: controller.screens[controller.selectedIndex.value],
        ),
      ),
    );
  }

  NavigationDestination _navItem(IconData icon, String label, bool isSelected) {
    return NavigationDestination(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isSelected ? Colors.white : Colors.grey.shade500),
          SizedBox(height: 4), // Keep spacing uniform
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey.shade500,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      label: '',
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomeScreen(),
    Placeholder(color: Colors.green),
    PremiumSection(),
  ];
}
