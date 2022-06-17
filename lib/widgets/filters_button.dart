import 'package:flutter/material.dart';
import 'package:suivi_de_projets/models/button_object.dart';

class FiltersButton extends StatefulWidget {
  ButtonObject button;

  FiltersButton({Key? key, required this.button}) : super(key: key);

  @override
  createState() => FiltersButtonState();
}

class FiltersButtonState extends State<FiltersButton> {
  bool filtersValue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.button.text ?? "",
              style: TextStyle(
                color: (filtersValue) ? Colors.grey : Colors.grey[900],
              ),
            ),
            Container(
                height: 2,
                width: 50,
                color: (filtersValue) ? Colors.grey : Colors.transparent)
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
          filtersValue = hover;
        });
      },
    );
  }
}
