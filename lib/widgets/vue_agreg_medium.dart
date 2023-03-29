import 'package:flutter/material.dart';
import 'package:suivi_de_projets/util/my_project.dart';
import 'package:suivi_de_projets/widgets/home_medium.dart';
import '../constantsResponsive.dart';
import '../constants.dart';

class VueAgregeeMediumPage extends StatefulWidget {
  const VueAgregeeMediumPage({Key? key}) : super(key: key);

  @override
  State<VueAgregeeMediumPage> createState() => VueAgregeeMediumPageState();
}

class VueAgregeeMediumPageState extends State<VueAgregeeMediumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: header(context),
        body: Padding(padding: EdgeInsets.all(10.0),
          child: MyProject(),
          )
          //MyProject(),
        );
  }
}
