import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  final String image;
  final String backgroundImage;
  final Alignment alignmentBackground;
  final Alignment alignment;

  const ImageStack({
    Key? key,
    required this.image,
    required this.backgroundImage,
    required this.alignment,
    this.alignmentBackground = const Alignment(0.7, -2),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Stack(
        alignment: alignmentBackground,
        children: [
          Image.asset(image),
          Image.asset(backgroundImage),
        ],
      ),
    );
  }
}
