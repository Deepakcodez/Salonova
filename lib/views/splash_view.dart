import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salonova/app/utils/custom_colors.dart';
import 'package:salonova/views/home/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomeView after 2 seconds using GetX
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const HomeView());
      // Or use named routes if configured:
      // Get.offNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Salonova',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Poppins-Medium',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
