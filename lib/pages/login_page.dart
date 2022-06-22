import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';

import '../models/make_it_responsive.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);
    double paddingSize = isSmallScreen ? 10 : (size.width - 500) / 2;
    int paddingLogo = isSmallScreen ? 35 : 70;

    return Scaffold(
        appBar: getAppBar(context, size),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: isSmallScreen ? 30 : 70),
            child: Center(
              child: Container(
                width: 200,
                height: 100,
                child: Image.asset(sncfLogo),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: 10, left: paddingSize, right: paddingSize),
            child: const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nom d\' utilisateur',
                  hintText: 'Entrez votre nom d\'utilisateur.'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 15, left: paddingSize, right: paddingSize, bottom: 50),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mot de passe',
                  hintText: 'Entrez votre mot de passe.'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: paddingSize, right: paddingSize),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        minimumSize: const Size(100, 50),
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: const Text('Créer un compte'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20),
                        minimumSize: const Size(100, 50),
                        primary: Colors.green,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    child: const Text('Se connecter'),
                  ),
                ),
              ],
            ),
          )
        ])));
  }
}
