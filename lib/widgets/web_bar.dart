import 'package:flutter/material.dart';

class WebBar extends PreferredSize {
  Size size;

  WebBar({Key? key, required this.size})
      : super(
            key: key,
            preferredSize: Size((size.width), (size.height / 3)),
            child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Hello World"),
                      ],
                    ),
                  ),
                ],
              ),
            ));
}
