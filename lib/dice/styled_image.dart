import 'package:flutter/material.dart';

class StyledImage extends StatelessWidget {
  const StyledImage(this.img, {super.key});

  final String img;

  @override
  Widget build(context) {
    return Image.asset(img);
  }
}
