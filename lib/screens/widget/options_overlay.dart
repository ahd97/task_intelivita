import 'package:flutter/material.dart';
import '../../model/category_item.dart';


class OptionsOverlay extends StatelessWidget {
  final CategoryItem item;

  const OptionsOverlay({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...item.options.map((option) => Column(
          children: [
            ListTile(
              title: Text(option),
              onTap: () {
                print('Selected: $option');
              },
            ),
            const Divider(),
          ],
        )),
      ],
    );
  }
}