import 'package:flutter/material.dart';
import 'package:suivi_de_projets/util/my_project.dart';
import '../constantsResponsive.dart';
import '../constants.dart';

class VueAgregeeSmallPage extends StatefulWidget {
  const VueAgregeeSmallPage({Key? key}) : super(key: key);

  @override
  State<VueAgregeeSmallPage> createState() => VueAgregeeSmallPageState();
}

class VueAgregeeSmallPageState extends State<VueAgregeeSmallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: header(context),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          MyProject()
        ]));
  }
}
