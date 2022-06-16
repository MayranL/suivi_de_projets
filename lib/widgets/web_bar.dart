import 'package:flutter/material.dart';

import '../constants.dart';
import 'branding.dart';

class WebBar extends PreferredSize {
  Size size;

  WebBar({Key? key, required this.size})
      : super(
            key: key,
            preferredSize: Size((size.width), (size.height / 3)),
            child: Container(
              color: bleuCanard,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Branding(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: menuButtonHover(),
                    ),
                  )
                ],
              ),
            ));
}
