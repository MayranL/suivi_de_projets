import 'package:flutter/material.dart';
import 'package:suivi_de_projets/pages/home_page.dart';
import 'package:suivi_de_projets/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:suivi_de_projets/responsive/responsive_layout.dart';
import 'package:suivi_de_projets/responsive/mobile_body.dart';
import 'package:suivi_de_projets/responsive/tablet_body.dart';
import 'package:suivi_de_projets/responsive/desktop_body.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Suivi de Projets',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Avenir'),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}
