import 'package:flutter/material.dart';

bool isHover = false;

class MyProject extends StatelessWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AffichageInfo();
  }

  void setState(Null Function() param0) {}
}

class Cadrage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.black38,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.green)]
            //borderRadius: BorderRadius.circular(100)
            //more than 50% of width makes circle
            ),
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
              onPressed: () {},
              child: const Text('Vue agrégée'),
            ),
          ),
        ]),
      ),
    );
  }
}

class Hebergement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lightBlue,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.green)]
            //borderRadius: BorderRadius.circular(100)
            //more than 50% of width makes circle
            ),
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
            child: const Center(child: Text(' Rédaction du DAL : ')),
          ),
          Container(
            height: 50,
            child: const Center(child: Text(' Devis sur le DAT : ')),
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
      ),
    );
  }
}

class Realisation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration:
            BoxDecoration(color: Colors.deepPurple, shape: BoxShape.circle
                //borderRadius: BorderRadius.circular(100)
                //more than 50% of width makes circle
                ),
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
      ),
    );
  }
}

class OuvertureProd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration:
            BoxDecoration(color: Colors.deepOrangeAccent, shape: BoxShape.circle
                //borderRadius: BorderRadius.circular(100)
                //more than 50% of width makes circle
                ),
        child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          Container(
            height: 50,
            child: const Align(
                alignment: Alignment.center,
                child: Text('Ouverture Production',
                    style: TextStyle(fontSize: 25))),
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
      ),
    );
  }
}

List<Map<String, dynamic>> dataList = [
  {'title': 'Cadrage', 'sous-title': 'Description cadrage', 'date': 'Date de fin'},
  {'title': 'Hebergement', 'sous-title': 'Description cadrage', 'date': 'Date de fin'},
  {'title': 'Realisation', 'sous-title': 'Description cadrage', 'date': 'Date de fin'},
  {'title': 'OuvertureProd', 'sous-title': 'Description cadrage', 'date': 'Date de fin'},
];

List<Container> containerList = dataList.map((data) {
  return Container(
    width: 100,
    height: 100,
    color: data['color'],
    child: Center(
      child: Text(
        data['title'],
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
  );
}).toList();

class AffichageInfo extends StatefulWidget {
  const AffichageInfo({Key? key}) : super(key: key);

  @override
  State<AffichageInfo> createState() => _AffichageInfoState();
}

class _AffichageInfoState extends State<AffichageInfo> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: containerList,
        ),
        Row(
          children: containerList,
        )
  ],
    );

    /*return Container(



      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(9, (index) {
          return Container(
            color: index % 2 == 0 ? Colors.blue : Colors.red, // définir la couleur en fonction de l'index
            child: Center(
              child: Text(
                'Case $index',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }),
      ),
    */



      /*
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: GridView.builder(
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Hebergement();
              },
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: GridView.builder(
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Cadrage();
              },
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: GridView.builder(
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Realisation();
              },
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: GridView.builder(
              itemCount: 1,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return OuvertureProd();
              },
            ),
          ),
        ],
      ),*/

  }
}
