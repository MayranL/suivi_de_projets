import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:suivi_de_projets/pages/home_page.dart';

import '../models/make_it_responsive.dart';
import '../widgets/web_bar.dart';

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
    return Scaffold(
        appBar: (screenSize == ScreenSize.small)
            ? WebBar(
                titlePage: "Login",
                size: size,
                isUserLogged: false,
              )
            : WebBar(
                titlePage: "Login",
                size: size,
                isUserLogged: false,
              ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: size.height / 4),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 100,
                    child: Image.asset(sncfLogo),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 300, right: 300),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nom d\' utilisateur',
                      hintText: 'Entrez votre nom d\'utilisateur.'),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 15, left: 300, right: 300, bottom: 50),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                      hintText: 'Entrez votre mot de passe.'),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomePage()));
                  },
                  child: const Text(
                    'Connexion',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
