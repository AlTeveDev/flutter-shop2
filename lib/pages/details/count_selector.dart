import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yt4/constants.dart';

class CountSelector extends StatefulWidget {
  const CountSelector({
    super.key,
  });

  @override
  State<CountSelector> createState() => _CountSelectorState();
}

class _CountSelectorState extends State<CountSelector> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (count > 1) {
              setState(() {
                count--;
              });
            }
          },
          icon: Icon(CupertinoIcons.minus),
        ),
        SizedBox(width: kDefaultPadding/2),
        AnimatedFlipCounter(
          value: count,
          wholeDigits: 2,
          textStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 18),
          duration: Duration(milliseconds: 100),
        ),
        SizedBox(width: kDefaultPadding/2),
        IconButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          icon: Icon(CupertinoIcons.plus),
        ),
      ],
    );
  }
}
