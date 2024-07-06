import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector({
    super.key,
  });

  @override
  State<ColorSelector> createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  final colors = const [Colors.blueAccent, Colors.red, Colors.green];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color"),
        Row(
          children: List.generate(
            colors.length,
                (index) => InkWell(
              onTap: () {
                setState(() {
                  current = index;
                });
              },
              child: Container(
                width: 28,
                height: 28,
                margin: EdgeInsets.only(right: 4),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(
                    color: current == index ? Theme.of(context).colorScheme.primaryContainer : Colors.transparent,
                    width: 1.5,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    color: colors[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
