import 'package:flutter/material.dart';
import 'package:movieapp/utils/utils.dart';

class TextIcon extends StatelessWidget {
  final Text text;
  final IconButton icon;

  const TextIcon({super.key, required this.text, required this.icon});

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [icon, addVerticalSpace(4), text],
    );
  }
}
