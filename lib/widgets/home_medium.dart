import 'package:flutter/material.dart';
import 'package:suivi_de_projets/util/my_box.dart';

class HomeMediumPage extends StatefulWidget {
  const HomeMediumPage({Key? key}) : super(key: key);

  @override
  createState() => HomeMediumPageState();
}

//TODO : Faire le responsive de l'affichage des Projets du Home

class HomeMediumPageState extends State<HomeMediumPage> {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).size.width < 670){
      return affichageLigneBox(context, 2);
    } else if (MediaQuery.of(context).size.width < 1100){
      return affichageLigneBox(context, 3);
    } else {
      return affichageLigneBox(context, 4);
    }


  }
}

affichageLigneBox(BuildContext context, int size){
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
                itemCount: size,
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
                itemCount: size,
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
                itemCount: size,
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