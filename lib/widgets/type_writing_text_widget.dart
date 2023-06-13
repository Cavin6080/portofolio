import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypeWritingTextWidget extends StatelessWidget {
  final String title;
  final double? fontSize;
  const TypeWritingTextWidget({super.key, required this.title, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: false,
      isRepeatingAnimation: false,
      animatedTexts: [
        TypewriterAnimatedText(
          title,
          speed: const Duration(milliseconds: 40),
          textStyle: TextStyle(
            color: const Color(0XFF003d55),
            fontSize: fontSize ?? 20,
          ),
        ),
      ],
      onTap: () {
        print("Tap Event");
      },
    );
  }
}
