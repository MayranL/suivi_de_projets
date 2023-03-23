import 'package:flutter/material.dart';
import 'package:suivi_de_projets/widgets/vue_agreg_medium.dart';
import 'package:suivi_de_projets/widgets/vue_agreg_small.dart';

import '../models/make_it_responsive.dart';

import 'package:suivi_de_projets/constantsResponsive.dart';

class VueAgreg extends StatefulWidget {
  const VueAgreg({Key? key}) : super(key: key);

  @override
  createState() => VueAgregState();
}

class VueAgregState extends State<VueAgreg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);

    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: header(context),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: (Container(
              width: (isSmallScreen) ? size.width : size.width - 150,
              child: (isSmallScreen)
                  ? const VueAgregeeSmallPage()
                  : const VueAgregeeMediumPage(),
            )),
          )
        ],
      ),
    );
  }
}
