import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salonova/app/controllers/home_view_controller.dart';
import 'package:salonova/app/utils/custom_colors.dart';
import 'package:salonova/views/home/home_banner.dart';
import 'package:salonova/views/home/home_categories.dart';
import 'package:salonova/views/home/home_products.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.mainColor,
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.white),
        title: const Text('Salonova', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
          ),
        ],
      ),
      body: GetBuilder<HomeViewController>(
        builder: (controller) {
          return Column(
            children: [
              HomeBanner(),
              SizedBox(height: 8),
              HomeCategories(),
              ProductsOnHome(),
            ],
          );
        },
      ),
    );
  }
}
