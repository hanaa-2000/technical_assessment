import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final Widget widget;

  const GradientText(this.widget, {super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Color(0xFFE4B679),
          Color(0xFFFEE5C4),
        ],
      ).createShader(bounds),
      child:widget
    );
  }
}