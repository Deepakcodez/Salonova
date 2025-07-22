import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salonova/app/bindings/app_bindings.dart';
import 'package:salonova/app/controllers/home_view_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<HomeViewController>(
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  homeViewController.counter.value.toString(),
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: homeViewController.incrementCounter,
                  child: const Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: homeViewController.decrementCounter,
                  child: const Text('Decrement'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
