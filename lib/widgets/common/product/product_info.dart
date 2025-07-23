import 'package:flutter/material.dart';
import 'package:salonova/app/utils/custom_colors.dart';

class ProductInfo extends StatelessWidget {
  final String productName;
  final double price;
  final bool inCart;

  const ProductInfo({
    super.key,
    required this.productName,
    required this.price,
    required this.inCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  '₹${price.toStringAsFixed(2)} /-',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              color: inCart ? Colors.grey[300] : CustomColors.mainColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              iconSize: 16,
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
