import 'package:flutter/material.dart';

class PhonebarTitleText extends Text {
  String title;

  PhonebarTitleText({Key? key, required this.title})
      : super(
            key: key,
            title,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
                fontFamily: 'Avenir',
                fontStyle: FontStyle.normal));
}
