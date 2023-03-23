import 'package:flutter/material.dart';
import 'package:suivi_de_projets/util/my_box.dart';

class HomeSmallPage extends StatefulWidget {
  const HomeSmallPage({Key? key}) : super(key: key);

  @override
  createState() => HomeSmallPageState();
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

/*
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
}*/

/*listeDeProjet() {
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

}*/

class HomeSmallPageState extends State<HomeSmallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // first 4 boxes in grid
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return MyBox();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
    }
  }

