import 'package:e4u/navigation_bar.dart';
import 'package:e4u/presentation/screens/home_screen.dart' as home;
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(NavigationMenu());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [
          //     Color(0xFFBFC3C8), // Light grayish tone at the top
          //     Color(0xFF7F8C97), // Slightly darker gradient effect
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
        ),
        child: Center(
          child: Text("E4U"),
          // child: Image.asset(
          //   ImageStrings.splashScreen, // Ensure the image is in your assets folder
          //   width: 350, // Adjust as per need
          // ),
        ),
      ),
    );
  }
}
