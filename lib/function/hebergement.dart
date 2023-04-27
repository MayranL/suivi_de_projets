import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suivi_de_projets/function/editWindowsVueAgreg.dart';

import '../widgets/globals.dart';

class Hebergement extends StatefulWidget {
  @override
  _HebergementState createState() {
    return _HebergementState();
  }
}

class _HebergementState extends State<Hebergement> {
  @override
  Widget build(BuildContext context) {
    Color colorContainer = mapColor['Hebergement']!;
    return editWindowsVueAgreg(context, setState, colorContainer, map['Hebergement']![0], map['Hebergement']![1], map['Hebergement']![2]);
  }
}
