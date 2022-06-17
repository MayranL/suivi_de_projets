import 'package:flutter/material.dart';

import '../constants.dart';
import 'branding.dart';

class WebBar extends PreferredSize {
  Size size;
  bool isUserLogged;
  String titlePage;

  WebBar(
      {Key? key,
      required this.titlePage,
      required this.size,
      required this.isUserLogged})
      : super(
            key: key,
            preferredSize: Size((size.width), (size.height / 3)),
            child: Container(
              color: bleuCanard,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Branding(titlePage: titlePage),
                  Visibility(
                      visible: isUserLogged,
                      child: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: menuButtonHover(),
                        ),
                      ))
                ],
              ),
            ));
}
