import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suivi_de_projets/function/editWindowsVueAgreg.dart';

import '../widgets/globals.dart';

class Cadrage extends StatefulWidget {
  const Cadrage({Key? key}) : super(key: key);

  @override
  State<Cadrage> createState() => _CadrageState();
}

class _CadrageState extends State<Cadrage> {
  @override
  Widget build(BuildContext context) {
    Color colorContainer = mapColor['Cadrage']!;
    return editWindowsVueAgreg(context, setState, colorContainer, map['Cadrage']![0], map['Cadrage']![1],map['Cadrage']![2]);//envoyer les valeurs venant de la base :)
  }
}
