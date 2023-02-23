import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:suivi_de_projets/widgets/filtres.dart';
import 'package:suivi_de_projets/pages/vue_agreg.dart';
import 'package:suivi_de_projets/widgets/graph.dart';
import 'package:suivi_de_projets/pages/login_page.dart';

import '../models/make_it_responsive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => HomePageState();
}

class Choice {
  const Choice({required this.title, required this.numero});

  final String title;
  final String numero;
}

List images = [
  "./maquettes/dashboard.png",
  "./maquettes/hub.png",
];

const List choices = [Choice(title: 'Projet1', numero: "Image(hub)")];

class ListeProjet {
  listP(int sizeListe) {
    List container = [];
    for (var i = 0; i < sizeListe; i++) {
      container.add(space(10, 10));
      container.add(
        Expanded(
            child: Container(
                color: Colors.blue,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Nom du projet')),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.amber[500],
                      child: const Center(child: Text(' Porteur : ')),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.amber[500],
                      child: const Center(child: Text(' Secteur : ')),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      color: Colors.amber[500],
                      child: const Center(child: Text(' Statut ')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[500],
                      child: const Center(child: Text(' Risque : ' + 'aa')),
                    ),
                    Container(
                      height: 50,
                      child:
                          Center(child: Image.asset('./images/sncf-logo.png')),
                    ),
                  ],
                ))),
      );
    }
    return GridView.count(
      crossAxisCount: 3,
      children: [],
    );
  }
}

listeDeProjet() {
  Expanded(
      child: Container(
          color: Colors.blue,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                width: 300,
                color: Colors.amber[600],
                child: const Center(child: Text('Nom du projet')),
              ),
              Container(
                height: 50,
                width: 300,
                color: Colors.amber[500],
                child: const Center(child: Text(' Porteur : ')),
              ),
              Container(
                height: 50,
                width: 300,
                color: Colors.amber[500],
                child: const Center(child: Text(' Secteur : ')),
              ),
              Container(
                height: 50,
                width: 300,
                color: Colors.amber[500],
                child: const Center(child: Text(' Statut ')),
              ),
              Container(
                height: 50,
                color: Colors.amber[500],
                child: const Center(child: Text(' Risque : ' + 'aa')),
              ),
              Container(
                height: 50,
                child: Center(child: Image.asset('./images/sncf-logo.png')),
              ),
            ],
          )));

  return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: [
        spaceBox(),
        Container(
            color: Colors.blue,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Nom du projet')),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[500],
                  child: const Center(child: Text(' Porteur : ')),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[500],
                  child: const Center(child: Text(' Secteur : ')),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[500],
                  child: const Center(child: Text(' Statut ')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(
                      child: Text(' Risque : ' + 'aa')),
                ),
                Container(
                  height: 50,
                  child: Center(
                      child: Image.asset('./images/sncf-logo.png')),
                ),
              ],
            )),
        space(10, 10),
        Container(
            color: Colors.blue,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Nom du projet')),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[500],
                  child: const Center(child: Text(' Porteur : ')),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[500],
                  child: const Center(child: Text(' Secteur : ')),
                ),
                Container(
                  height: 50,
                  width: 300,
                  color: Colors.amber[500],
                  child: const Center(child: Text(' Statut ')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(
                      child: Text(' Risque : ' + 'aa')),
                ),
                Container(
                  height: 50,
                  child: Center(
                      child: Image.asset('./images/sncf-logo.png')),
                ),
              ],
            )),
      ]);

}



class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);
    double paddingSize = isSmallScreen ? 10 : (size.width - 500) / 2;

    filter() {
      return Container(
        color: Colors.grey,
        child: SizedBox(
          width: 150,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Filtres',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              Container(
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
              ),
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
            ],
          ),
        ),
      );
    }

    return Scaffold(
        appBar: getAppBar(context, size),
        body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Flexible(child: filter()),
          Flexible(child: listeDeProjet()),
          Flexible(
              child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    print("Container clicked");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.teal[100],
                    child: const Text("He'd have you all unravel at the"),
                  )),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                child: const Text('Heed not the rabble'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                child: const Text('Sound of screams but the'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                child: const Text('Who scream'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                child: const Text('Revolution is coming...'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                child: const Text('Revolution, they...'),
              ),
            ],
          )),
        ]));
  }
}
