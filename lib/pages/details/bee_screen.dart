import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yt4/constants.dart';
import 'package:yt4/models/Product.dart';
import 'buy_now_button.dart';
import 'count_selector.dart';
import 'size_info.dart';
import 'package:yt4/pages/main/category_selector.dart';
import 'package:yt4/pages/main/product_card.dart';

import 'add_to_cart_button.dart';
import 'color_selector.dart';
import 'product_title_with_image.dart';

class MyHopePage extends StatelessWidget {
  const MyHopePage({
    super.key,
    required this.product,
    required this.imageKey,
  });

  final Product product;
  final Key imageKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.white,
            ),
          ),
          SizedBox(width: kDefaultPadding / 2)
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 500,
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: 5 * kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(kDefaultPadding)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ColorSelector(),
                      Spacer(),
                      SizeInfo(size: product.size),
                      Spacer(),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(dummyText),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    children: [
                      CountSelector(),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(
                            backgroundColor: Colors.redAccent),
                        icon: SvgPicture.asset("assets/icons/heart.svg",
                            height: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    children: [
                      AddToCartButton(color: product.color),
                      SizedBox(width: kDefaultPadding),
                      BuyNowButton(product: product)
                    ],
                  )
                ],
              ),
            ),
          ),
          ProductTitleWithImage(product: product, imageKey: imageKey),
        ],
      ),
    );
  }
}