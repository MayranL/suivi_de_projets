import 'package:flutter/material.dart';

import '../models/button_object.dart';

class HoverButton extends StatefulWidget {
  ButtonObject button;

  HoverButton({Key? key, required this.button}) : super(key: key);

  @override
  createState() => HoverState();
}

class HoverState extends State<HoverButton> {
  bool hooverValue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.button.text ?? "",
              style: TextStyle(
                color: (hooverValue) ? Colors.white : Colors.white38,
              ),
            ),
            Container(
                height: 2,
                width: 104,
                color: (hooverValue) ? Colors.white : Colors.white38)
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget.button.destination;
        }));
      },
      onHover: (hover) {
        setState(() {
          hooverValue = hover;
        });
      },
    );
  }
}
