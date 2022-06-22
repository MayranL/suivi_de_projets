import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';

import 'branding.dart';

class PhoneBar extends AppBar {
  bool isUserLogged;
  String titlePage;

  PhoneBar({Key? key, required this.titlePage, required this.isUserLogged})
      : super(
          key: key,
          title: Branding(),
          centerTitle: true,
          backgroundColor: appBarBack,
        );
}
