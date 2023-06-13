import 'package:flutter/material.dart';

class GreenLinesWidget extends StatelessWidget {
  final Color? color;
  const GreenLinesWidget({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => Divider(
        color: color ?? Colors.green.withOpacity(0.2),
        height: 8,
        thickness: 2,
      ),
    );
  }
}
