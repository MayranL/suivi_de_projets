import 'package:flutter/material.dart';
import 'package:suivi_de_projets/pages/about_page.dart';
import 'package:suivi_de_projets/pages/login_page.dart';
import 'package:suivi_de_projets/pages/home_page.dart';
import 'package:suivi_de_projets/pages/dashboard_page.dart';
import 'package:suivi_de_projets/pages/parametre_page.dart';
import 'package:suivi_de_projets/pages/add_new_project_page.dart';
import 'package:suivi_de_projets/responsive/desktop_body.dart';
import 'package:suivi_de_projets/responsive/mobile_body.dart';
import 'package:suivi_de_projets/responsive/responsive_layout.dart';

import 'constants.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
    backgroundColor: appBarColor,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          sncfLogo,
          fit: BoxFit.contain,
          height: 32,
        ),
        Container(
            padding: const EdgeInsets.all(8.0), child: Text('Suivi de projet')),
      ],
    ));
/*
  backgroundColor: appBarColor,
  title: Text(' Suivi de Projets '),
  centerTitle: false,
  );*/

var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);

header(BuildContext context) {
  var myDrawer = Drawer(
    backgroundColor: Colors.grey[300],
    elevation: 0,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              child: DrawerHeader(
                child: IconButton(
                  icon: const Icon(
                    Icons.amp_stories_rounded,
                    size: 32,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ResponsiveLayout(
                                  mobileBody: const MobileScaffold(),
                                  desktopBody: const DesktopScaffold(),
                                )));
                  },
                ),
              ),
            ),
            Padding(
              padding: tilePadding,
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'H U B',
                  style: drawerTextColor,
                ),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ),
            Padding(
              padding: tilePadding,
              child: ListTile(
                  leading: Icon(Icons.add_box_rounded),
                  //ButtonObject(text: "Login", destination: const LoginPage()),
                  title: Text(
                    'Nouveau Projet',
                    style: drawerTextColor,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddNewProjectPage()),
                    );
                  }),
            ),
            Padding(
              padding: tilePadding,
              child: ListTile(
                leading: Icon(Icons.add_chart_rounded),
                title: Text(
                  'D A S H B O A R D',
                  style: drawerTextColor,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DashboardPage()));
                },
              ),
            ),
            Padding(
              padding: tilePadding,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'S E T T I N G S',
                  style: drawerTextColor,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ParametrePage()));
                },
              ),
            ),
            Padding(
              padding: tilePadding,
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'A B O U T',
                  style: drawerTextColor,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
              ),
            ),
            Padding(
              padding: tilePadding,
              child: ListTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text(
                  'L O G  IN',
                  style: drawerTextColor,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ),
          ],
        ),
      Padding(
        padding: EdgeInsets.only(left: 8.0,bottom: 25),
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ),
      ],
    ),
  );
  return myDrawer;
}
