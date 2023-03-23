import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:suivi_de_projets/constantsResponsive.dart';
import 'package:suivi_de_projets/widgets/dashboard_medium.dart';
import 'package:suivi_de_projets/widgets/dashboard_small.dart';
import 'package:suivi_de_projets/widgets/graph.dart';
import 'package:pie_chart/pie_chart.dart';

import '../models/make_it_responsive.dart';
import 'home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
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
              child: Container(
            width: (isSmallScreen) ? size.width : size.width - 150,
            child: (isSmallScreen)
                ? const DashboardSmallPage()
                : const DashboardMediumPage(),
          ))
        ],
      ),
    );
  }
}
