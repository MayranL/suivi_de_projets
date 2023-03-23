import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:suivi_de_projets/pages/add_new_project_page.dart';
import 'package:suivi_de_projets/pages/dashboard_page.dart';
import 'package:suivi_de_projets/pages/home_page.dart';
import 'package:suivi_de_projets/pages/vue_agreg.dart';
import 'package:suivi_de_projets/pages/login_page.dart';
import 'package:suivi_de_projets/widgets/hover_button.dart';
import 'package:suivi_de_projets/widgets/phone_bar.dart';
import 'package:suivi_de_projets/widgets/web_bar.dart';

import 'models/button_object.dart';
import 'models/make_it_responsive.dart';

// images
String sncfLogo = "images/sncf-logo.png";
String hub = "maquettes/hub.png";

// text
String titleApp = "Suivi de projets";

// header buttons
List<ButtonObject> menuButton = [
  ButtonObject(text: "Login", destination: const LoginPage()),
  ButtonObject(text: "Home", destination: const HomePage()),
  ButtonObject(text: "Dashboard", destination: const DashboardPage()),
  ButtonObject(text: "Nouveau Projet", destination: const AddNewProjectPage()),
  ButtonObject(text: "Vue Agregée", destination: const VueAgreg()),

];

List<HoverButton> menuButtonHover() =>
    menuButton.map((el) => HoverButton(button: el)).toList();

// filters buttons
List<Map> menuItems = [
  {'title': 'Suivi', 'status': false},
  {'title': 'Nom du projet', 'status': false},
  {'title': 'Porteur', 'status': false},
  {'title': 'Secteur', 'status': false},
  {'title': 'Statut', 'status': false}
];

List<DropdownMenuItem<String>> listeDropdown =
    const ['1', '2 - 10', '11 - 100', '101 - 1000', '+ de 1000']
        .map((el) => DropdownMenuItem(
              value: el,
              child: Text(el),
            ))
        .toList();

// colors
Color bleuCanard = const Color.fromRGBO(0, 154, 166, 1);
Color appBarBack = const Color.fromRGBO(51, 51, 51, 1);

// dimension
double minPoint = 640;
double maxPoint = 1008;

getAppBar(context, size) {
  ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
  if (screenSize == ScreenSize.small) {
    return PhoneBar(
      titlePage: "Home",
      isUserLogged: true,
    );
  } else {
    return WebBar(
      titlePage: "Home",
      size: size,
      isUserLogged: true,
    );
  }
}

space(double height, double width) {
  return SizedBox(height: height, width: width);
}

spaceBox() {
  return const SizedBox(height: 25, width: 25);
}

