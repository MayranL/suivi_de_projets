import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suivi_de_projets/function/editWindowsVueAgreg.dart';

import '../widgets/globals.dart';

class Realisation extends StatefulWidget {
  const Realisation({Key? key}) : super(key: key);

  @override
  State<Realisation> createState() => _RealisationState();
}

class _RealisationState extends State<Realisation> {
  @override
  Widget build(BuildContext context) {
    Color colorContainer = mapColor['Realisation']!;
    return editWindowsVueAgreg(context, setState, colorContainer, map['Realisation']![0], map['Realisation']![1], map['Realisation']![2]);
  }
}
