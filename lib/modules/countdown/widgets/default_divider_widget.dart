import 'package:flutter/material.dart';

class DefaultDividerWidget extends StatelessWidget {
  final double height;
  final Color color;
  const DefaultDividerWidget({
    Key? key,
    required this.height,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.5),
        color: color,
      ),
    );
  }
}
