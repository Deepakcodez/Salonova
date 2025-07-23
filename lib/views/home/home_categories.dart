import 'package:flutter/material.dart';
import 'package:salonova/app/utils/custom_colors.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});

  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  final List<String> categories = [
    "New Arrivals",
    "Baby Care",
    "Educational",
    "Home & Kitchen",
    "Electronics",
    "Hardware",
    "Sports",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Chip(
                  label: Text(categories[index]),
                  side: BorderSide(color: CustomColors.mainColor),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 12),
        Container(
          width: double.infinity,
          color: const Color(0xFFC8BDB3),
          padding: const EdgeInsets.symmetric(vertical: 8),
          alignment: Alignment.center,
          child: const Text(
            "Discover Luxe Living",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
