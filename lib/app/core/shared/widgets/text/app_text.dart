import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final String? semanticsLabel;
  final TextStyle? style;
  const AppText(this.data, {super.key, this.style, this.semanticsLabel});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.textScalerOf(context);
    return Text(
      data,
      style: style,
      textScaler: scale,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      semanticsLabel: semanticsLabel,
    );
  }
}
