import 'package:flutter/material.dart';

class SizeInfo extends StatelessWidget {
  const SizeInfo({
    super.key,
    required this.size,
  });

  final int size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Size",
            style: Theme.of(context).textTheme.bodyMedium),
        Text(
          "${size} cm",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}