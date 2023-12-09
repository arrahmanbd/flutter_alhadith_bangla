import 'package:alhadith/src/core/colors.dart';
import 'package:alhadith/src/core/values.dart';
import 'package:flutter/material.dart';

class GlobalText extends StatelessWidget {
  const GlobalText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.weight,
    required this.ar,
  }) : super(key: key);

  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final bool ar;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: ar ? TextDirection.rtl : TextDirection.ltr,
      style: TextStyle(
          color: color ?? greyBlack,
          fontFamily: ar ? 'MeQuran' : 'Kalpurush',
          height: ar ? 3 : 0,
          fontSize: size ?? Value.normal,
          fontWeight: weight ?? Value.lightFont),
    );
  }
}
