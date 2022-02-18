import 'package:flutter/material.dart';

class DefaultTextWidget extends StatelessWidget {
  final String title;
  final TextStyle textStyle;

  const DefaultTextWidget({
    Key? key,
    required this.title,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,
    );
  }
}
