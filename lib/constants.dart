import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:suivi_de_projets/pages/home_page.dart';
import 'package:suivi_de_projets/widgets/hover_button.dart';

import 'models/button_object.dart';

// images
String sncfLogo = "images/sncf-logo.png";

// buttons
List<ButtonObject> menuButton = [
  ButtonObject(text: "Hub", destination: const HomePage()),
  ButtonObject(text: "Dashboard", destination: const HomePage()),
  ButtonObject(text: "Nouveau Projet", destination: const HomePage()),
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((el) => HoverButton(button: el)).toList();

// colors
Color bleuCanard = const Color.fromRGBO(0, 154, 166, 1);

// dimension
double minPoint = 640;
double maxPoint = 1008;
