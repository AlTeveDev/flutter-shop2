import 'package:flutter/material.dart';
import 'package:yt4/constants.dart';
import 'package:yt4/models/Product.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({
    super.key,
  });

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          productCategories.length,
          (index) => InkWell(
            onTap: () { setState(() { current = index; }); },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productCategories[index]),
                  Container(
                    width: 30,
                    height: 2,
                    color: index == current ? kTextColor : Colors.transparent,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
