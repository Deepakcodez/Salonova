import 'package:flutter/material.dart';
import 'package:salonova/widgets/common/product/product_card.dart';

class ProductsOnHome extends StatefulWidget {
  const ProductsOnHome({super.key});

  @override
  State<ProductsOnHome> createState() => _ProductsOnHomeState();
}

class _ProductsOnHomeState extends State<ProductsOnHome> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              imageUrl:
                  "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg",
              productName: "photo",
              description: "xyz",
              price: 100,
            );
          },
        ),
      ),
    );
  }
}
