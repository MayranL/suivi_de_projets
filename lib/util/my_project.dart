import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';

import 'animated_container.dart';
import 'my_hebergement.dart';

bool isHover = false;

class MyProject extends StatelessWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AffichageInfo();
    //return DraggableContainerList();
  }

  void setState(Null Function() param0) {}
}

//TODO : Voir si un AlertDialog peut fonctionner pour afficher les informations et si cela fonctionne alors développer avec un jeu de test en brut

class Cadrage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          color: Colors.lightGreen, borderRadius: BorderRadius.circular(20.0)),
      child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          height: 50,
          child: const Center(
              child: Text(
            'Cadrage du besoin',
            style: TextStyle(fontSize: 25),
          )),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Rédaction du CDC : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Devis sur le CDC : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Statut : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Risque : ')),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                minimumSize: const Size(50, 50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            onPressed: () {
              MyAnimatedContainers();
            },
            child: const Text('Vue agrégée'),
          ),
        ),
      ]),
    );
  }
}

/*
class Hebergement extends StatelessWidget {

  Map<String,String> _map = {
    'redacDAL' : "aa",
    'devisDAT': "",
    'statut': "",
    'risque': "",
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          color: Colors.lightBlue, borderRadius: BorderRadius.circular(20.0)),
      child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          height: 50,
          child: const Center(
              child: Text(
            'Hebergement',
            style: TextStyle(fontSize: 25),
          )),
        ),
        Container(
          height: 50,
          child: Center(child: Text(" Rédaction du DAL : " + _map['redacDAL']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(' Devis sur le DAT : '+ _map['devisDAT']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(' Statut : '+ _map['statut']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(' Risque : '+ _map['risque']!)),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                minimumSize: const Size(50, 50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Edit Hebergement"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Rédaction DAL",
                          ),
                          initialValue: _map['redacDAL'],
                          onChanged: (value) {
                            setState(() {
                              _map['redacDAL'] = value;
                              print(value);
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Devis DAT",
                          ),
                          initialValue: _map['devisDAT'].toString(),
                          onChanged: (value) {
                            setState(() {
                              _map['devisDAT'] = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Statut",
                          ),
                          initialValue: _map['statut'].toString(),
                          onChanged: (value) {
                            setState(() {
                              _map['statut'] = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Risque",
                          ),
                          initialValue: _map['statut'].toString(),
                          onChanged: (value) {
                            setState(() {
                              _map['statut'] = value;
                            });
                          },
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          // Save changes and close the dialog
                          Navigator.pop(context);
                        },
                        child: Text("Save"),
                      ),
                    ],
                  );
                },

              );
            },
            child: const Text('Vue détaillée'),
          ),
        ),
      ]),
    );
  }
}
 */


class Realisation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          color: Colors.deepPurple, borderRadius: BorderRadius.circular(20.0)),
      child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          height: 50,
          child: const Center(
              child: Text(
            'Realisation',
            style: TextStyle(fontSize: 25),
          )),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Decoupage en sprint : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Developpement des US : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Statut : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Risque : ')),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                minimumSize: const Size(50, 50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            onPressed: () {},
            child: const Text('Vue détaillée'),
          ),
        ),
      ]),
    );
  }
}

class OuvertureProd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(20.0)),
      child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          height: 50,
          child: const Align(
              alignment: Alignment.center,
              child:
                  Text('Ouverture Production', style: TextStyle(fontSize: 25))),
        ),
        Container(
          height: 50,
          child: const Center(
              child: Text(' Habilitation utilisateurs : ',
                  textAlign: TextAlign.center)),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Statut : ')),
        ),
        Container(
          height: 50,
          child: const Center(child: Text(' Risque : ')),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                minimumSize: const Size(50, 50),
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0))),
            onPressed: () {},
            child: const Text('Vue détaillée'),
          ),
        ),
      ]),
    );
  }
}

class AffichageInfo extends StatefulWidget {
  const AffichageInfo({Key? key}) : super(key: key);

  @override
  State<AffichageInfo> createState() => _AffichageInfoState();
}

class _AffichageInfoState extends State<AffichageInfo> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height < 800) {
      //Affichage en mode téléphone
      if (MediaQuery.of(context).size.width < 600) {
        return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: AspectRatio(
              aspectRatio: 1,
              child: Scrollbar(
                isAlwaysShown: true,
                controller: controller,
                scrollbarOrientation: ScrollbarOrientation.right,
                thickness: 10,
                // Afficher la barre de défilement à droite
                child: ListView.separated(
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    switch (index) {
                      case 0:
                        return Hebergement();
                      case 1:
                        return Cadrage();
                      case 2:
                        return Realisation();
                      case 3:
                        return OuvertureProd();
                      default:
                        return SizedBox.shrink();
                    }
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 8),
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  controller: controller,
                ),
              ),
            ));
      } else if (MediaQuery.of(context).size.width < 1400) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hebergement(),
                Cadrage(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Realisation(),
                OuvertureProd(),
              ],
            )
          ],
        );
      } else {
        return GridView.count(
          //crossAxisCount: 2,
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(20),
          children: [
            Hebergement(),
            Cadrage(),
            Realisation(),
            OuvertureProd(),
          ],
        );
      }
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hebergement(),
              space(50, 50),
              Cadrage(),
            ],
          ),
          space(50, 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Realisation(),
              space(50, 50),
              OuvertureProd(),
            ],
          ),
        ],
      );
    }
  }
}

//TODO : DraggableContainer
/*
class DraggableContainer extends StatefulWidget {
  final Offset position;
  final Color color;

  DraggableContainer({required this.position, required this.color});

  @override
  _DraggableContainerState createState() => _DraggableContainerState();
}

class _DraggableContainerState extends State<DraggableContainer> {
  late Offset _position;

  @override
  void initState() {
    super.initState();
    _position = widget.position;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _position.dx,
      top: _position.dy,
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            _position += details.delta;
          });
        },
          child: Hebergement()
          ),
    );
  }
}

class DraggableContainerList extends StatefulWidget {
  @override
  _DraggableContainerListState createState() => _DraggableContainerListState();
}

class _DraggableContainerListState extends State<DraggableContainerList> {
  List<DraggableContainer> _containers = [
    DraggableContainer(position: Offset(50, 50), color: Colors.red),
    DraggableContainer(position: Offset(300, 300), color: Colors.green),
    DraggableContainer(position: Offset(600, 600), color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _containers,
    );
  }
}
*/

//TODO : Affichage de la liste des informations en sous vue agrégée
/*
List<String> dataList2 = ['Element 1', 'Element 2', 'Element 3', 'Element 4'];

List<Container> containerList2 = dataList2.map((element) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
    ),
    child: Center(
      child: Text(element),
    ),
  );
}).toList();

return Column(
mainAxisAlignment: MainAxisAlignment.center,
children: containerList2,
);
 */
