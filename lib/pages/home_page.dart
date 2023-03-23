import 'package:flutter/material.dart';
import 'package:suivi_de_projets/widgets/home_medium.dart';
import 'package:suivi_de_projets/widgets/home_small.dart';

import '../models/make_it_responsive.dart';

import 'package:suivi_de_projets/constantsResponsive.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);
    double paddingSize = isSmallScreen ? 10 : (size.width - 500) / 2;
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
                  ? const HomeSmallPage()
                  : const HomeMediumPage(),
            )),
          )
        ],
      ),
    );
  }
}
