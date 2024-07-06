import 'package:flutter/material.dart';
import 'package:yt4/constants.dart';
import 'package:yt4/models/Product.dart';
import 'package:yt4/pages/details/bee_screen.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  final Key imageKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                MyHopePage(product: product, imageKey: imageKey),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: product.color,
              ),
              child: Hero(
                tag: imageKey,
                child: Image.asset(product.image),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding / 4),
          Text(product.title, style: Theme.of(context).textTheme.bodyMedium),
          Text("\$${product.price}",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
