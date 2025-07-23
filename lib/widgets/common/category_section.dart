import 'package:flutter/material.dart';
import 'package:salonova/app/utils/custom_colors.dart';

class CategorySection extends StatelessWidget {
  final String categoryName;
  final VoidCallback onViewAll;
  final Widget products;

  const CategorySection({
    super.key,
    required this.categoryName,
    required this.onViewAll,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                categoryName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: onViewAll,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: CustomColors.mainColor,
                ),
                child: const Text(
                  'View All',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        products,
      ],
    );
  }
}
