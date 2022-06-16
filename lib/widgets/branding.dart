import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:suivi_de_projets/widgets/header_title_text.dart';

class Branding extends StatelessWidget {
  const Branding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(10)),
        Image.asset(
          sncfLogo,
          height: 60,
          width: 60,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        const HeaderTitleText(string: "Suivi de projets"),
      ],
    );
  }
}
