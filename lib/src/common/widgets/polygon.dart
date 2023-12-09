import 'package:alhadith/src/core/colors.dart';
import 'package:alhadith/src/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PolyGonWidget extends StatelessWidget {
  const PolyGonWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SvgPicture.asset(
          Res.polygon,
          alignment: Alignment.center,
          height: 42,
          width: 42,
        ),
        Text(title,
            style: const TextStyle(
                color: white, fontFamily: 'Kalpurush', fontSize: 18)),
      ],
    );
  }
}
