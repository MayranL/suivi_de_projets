import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:suivi_de_projets/pages/home_page.dart';
import 'package:suivi_de_projets/widgets/hover_button.dart';

import 'models/button_object.dart';

// images
String sncfLogo = "images/sncf-logo.png";

// header buttons
List<ButtonObject> menuButton = [
  ButtonObject(text: "Hub", destination: const HomePage()),
  ButtonObject(text: "Dashboard", destination: const HomePage()),
  ButtonObject(text: "Nouveau Projet", destination: const HomePage()),
];

List<HoverButton> menuButtonHover() =>
    menuButton.map((el) => HoverButton(button: el)).toList();

// filters buttons
List<SideNavigationBarItem> filterItems = const [
  SideNavigationBarItem(label: "Suivis", icon: Icons.ads_click),
  SideNavigationBarItem(label: "Nom du projet", icon: Icons.ads_click),
  SideNavigationBarItem(label: "Porteur", icon: Icons.ads_click),
  SideNavigationBarItem(label: "Secteur", icon: Icons.ads_click),
  SideNavigationBarItem(label: "Statut", icon: Icons.ads_click),
];

// colors
Color bleuCanard = const Color.fromRGBO(0, 154, 166, 1);

// dimension
double minPoint = 640;
double maxPoint = 1008;
