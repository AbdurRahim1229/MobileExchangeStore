import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
        onTap: press,
        child: Text(
          title,
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: getProportionateScreenWidth(20),
              color: Colors.black,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 5.0,
                  color: Color(0x1DAD3636),
                )
              ]),
        ),
      )
    ]);
  }
}
