import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';

import '../models/make_it_responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool _isSmallScreen = (screenSize == ScreenSize.small);

    return Scaffold(
      appBar: getAppBar(context, size),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            child: SizedBox(
              width: 150,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Expanded(
                    child: Center(
                      child: Text('Filtres',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Column(
                      children: menuItems
                          .map((el) => CheckboxListTile(
                                title: Text(el['title'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                    )),
                                value: el['status'],
                                onChanged: (val) {
                                  setState(() {
                                    el['status'] = val!;
                                  });
                                },
                              ))
                          .toList(),
                    ),
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
