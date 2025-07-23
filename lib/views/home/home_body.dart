import 'package:flutter/material.dart';
import 'package:salonova/views/home/home_banner.dart';
import 'package:salonova/views/home/home_categories.dart';
import 'package:salonova/views/home/home_products.dart';
import 'package:salonova/widgets/common/category_section.dart';

class HomeBodyScreen extends StatelessWidget {
  const HomeBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          const SizedBox(height: 10),
          HomeCategories(),
          CategorySection(
            categoryName: 'New Arrivals',
            onViewAll: () {},
            products: ProductsOnHome(),
          ),
          CategorySection(
            categoryName: 'Automotive',
            onViewAll: () {},
            products: ProductsOnHome(),
          ),
          CategorySection(
            categoryName: 'Baby Care',
            onViewAll: () {},
            products: ProductsOnHome(),
          ),
        ],
      ),
    );
  }
}
