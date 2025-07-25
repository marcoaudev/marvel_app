import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final String? semanticsLabel;
  final int? maxLines;
  final TextStyle? style;
  const AppText(this.data, {super.key, this.style, this.semanticsLabel, this.maxLines});

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.textScalerOf(context);
    return Text(
      data,
      style: style,
      textScaler: scale,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      semanticsLabel: semanticsLabel,
    );
  }
}
