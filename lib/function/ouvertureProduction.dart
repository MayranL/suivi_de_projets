import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suivi_de_projets/function/editWindowsVueAgreg.dart';

import '../widgets/globals.dart';

class OuvertureProduction extends StatefulWidget {
  const OuvertureProduction({Key? key}) : super(key: key);

  @override
  State<OuvertureProduction> createState() => _OuvertureProductionState();
}

class _OuvertureProductionState extends State<OuvertureProduction> {
  @override
  Widget build(BuildContext context) {
    Color colorContainer = mapColor['Ouverture']!;
    return editWindowsVueAgreg(context, setState, colorContainer, map['Ouverture']![0], map['Ouverture']![1], map['Ouverture']![2]);
  }
}