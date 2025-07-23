import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salonova/app/controllers/home_view_controller.dart';
import 'package:salonova/app/utils/custom_colors.dart';
import 'package:salonova/views/home/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeViewController controller = Get.put(HomeViewController());

    final List<Widget> pages = [
      const HomeBodyScreen(),
      const Center(child: Text('Categories')),
      const Center(child: Text('Orders')),
      const Center(child: Text('Account')),
    ];

    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        backgroundColor: CustomColors.mainColor,
        leading: IconButton(
          onPressed: controller.openDrawer,
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
        title: const Text('Salonova', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text("Menu")),
            ListTile(title: const Text("Home"), onTap: () => Get.back()),
          ],
        ),
      ),
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeTab,
          selectedItemColor: CustomColors.mainColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Account'),
          ],
        ),
      ),
    );
  }
}
