import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:suivi_de_projets/widgets/header_title_text.dart';
import 'package:suivi_de_projets/widgets/phonebar_title_text.dart';

import '../models/make_it_responsive.dart';

class Branding extends StatelessWidget {
  Branding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);
    return Row(
      children: [
        const Padding(padding: EdgeInsets.all(10)),
        Image.asset(
          sncfLogo,
          height: 60,
          width: 60,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        if (isSmallScreen) PhonebarTitleText(title: titleApp),
        if (!isSmallScreen) HeaderTitleText(title: titleApp),
      ],
    );
  }
}
