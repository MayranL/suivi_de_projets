import 'package:flutter/material.dart';

class HeaderTitleText extends Text {
  final String string;

  const HeaderTitleText({Key? key, required this.string})
      : super(
            key: key,
            string,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30,
                fontFamily: 'Avenir',
                fontStyle: FontStyle.normal));
}
