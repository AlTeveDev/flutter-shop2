import 'package:flutter/material.dart';
import 'package:yt4/constants.dart';
import 'package:yt4/models/Product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
    required this.imageKey,
  });

  final Product product;
  final Key imageKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style:
                    Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style:
                    Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 48,
                    ),
                  ),
                ],
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: Hero(
                  tag: imageKey,
                  child: Image.asset(product.image, fit: BoxFit.fitWidth),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
