import 'package:flutter/material.dart';
import 'package:portfolio_brutalism/screens/home_page.dart';
import 'package:portfolio_brutalism/utils/constants.dart';

class NeoBrutalismContainer extends StatelessWidget {
  final Widget child;
  final double? aspectRatio;
  final Color? backgroundColor;
  const NeoBrutalismContainer({
    super.key,
    required this.child,
    this.aspectRatio,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? 1 / 0.8,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: -5,
            left: 0,
            right: 0,
            child: Container(
              height: 20,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(
                bottom: 16,
                left: 20,
                right: 20,
              ),
              decoration: const BoxDecoration(
                color: Color(0XFF441ebf),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Container(
              height: 2,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.black87,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.fromLTRB(30, 30, 32, 40),
              height: 20,
              decoration: BoxDecoration(
                color: backgroundColor ?? const Color.fromARGB(200, 12, 39, 70),
                border: Border.all(
                  color: backgroundColor ?? Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class TitleTVWidget extends StatelessWidget {
  const TitleTVWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GreenLinesWidget(),
        Positioned.fill(
          child: Center(
            child: Text(
              "Cavin Macwan",
              style: TextStyle(
                color: Colors.green.shade400,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
