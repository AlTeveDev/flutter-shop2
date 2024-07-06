import 'package:flutter/material.dart';
import 'package:yt4/models/Product.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: product.color,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text("BUY NOW"),
      ),
    );
  }
}
