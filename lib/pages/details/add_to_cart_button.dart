import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key, required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        overlayColor: color,
        side: BorderSide(color: color, style: BorderStyle.solid),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: SvgPicture.asset(
        "assets/icons/add_to_cart.svg",
        color: color,
      ),
    );
  }
}