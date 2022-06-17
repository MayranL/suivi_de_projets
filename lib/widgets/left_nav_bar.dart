import 'package:flutter/material.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:suivi_de_projets/constants.dart';

class LeftNavBar extends StatefulWidget {
  Size size;
  LeftNavBar({Key? key, required this.size}) : super(key: key);

  @override
  createState() => LeftNavBarState();
}

class LeftNavBarState extends State<LeftNavBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SideNavigationBar(
      header: const SideNavigationBarHeader(
          image: CircleAvatar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black,
            child: Icon(Icons.add_outlined),
          ),
          title: Text(
            'Filtres',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w300,
            ),
          ),
          subtitle: Text(
            'Choisir un filtre',
          )),
      selectedIndex: selectedIndex,
      items: filterItems,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      theme: SideNavigationBarTheme(
        backgroundColor: bleuCanard,
        togglerTheme: SideNavigationBarTogglerTheme.standard(),
        itemTheme: SideNavigationBarItemTheme.standard(),
        dividerTheme: SideNavigationBarDividerTheme.standard(),
      ),
    );
  }
}
