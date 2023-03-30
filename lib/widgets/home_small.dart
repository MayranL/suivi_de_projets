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

class HomeSmallPageState extends State<HomeSmallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: generateAspectRatioList(10).length,
              itemBuilder: (BuildContext context, int index) {
                return generateAspectRatioList(10)[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*afficheProjet(int nbProjet) {
  List<AspectRatio> listProjet =
  for (int i = 0; i < nbProjet; i++) {
    AspectRatio(aspectRatio: 1, child: MyBox())
  }
  return listProjet;
}*/

List<AspectRatio> generateAspectRatioList(int nbProjet) {
  List<AspectRatio> aspectRatioList = [];
  for (int i = 0; i < nbProjet; i++) {
    AspectRatio aspectRatio = AspectRatio(aspectRatio: 1, child: MyBox()

    );
    aspectRatioList.add(aspectRatio);
  }
  return aspectRatioList;
}