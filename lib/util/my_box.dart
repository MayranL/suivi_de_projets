import 'package:flutter/material.dart';
import 'package:suivi_de_projets/widgets/vue_agreg_medium.dart';

import '../constants.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[350],
            ),
            child:
                ListView(padding: const EdgeInsets.all(8), children: <Widget>[
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[400],
                ),
                child: const Center(child: Text('Nom du projet', style: TextStyle(fontSize: 23), )),
              ),
              space(2,2),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[400],
                ),
                child: const Center(child: Text(' Porteur : ')),
              ),
                  space(2,2),

                  Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[400],
                ),
                child: const Center(child: Text(' Secteur : ')),
              ),
                  space(2,2),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[400],
                ),
                child: const Center(child: Text(' Statut : ')),
              ),
                  space(2,2),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey[400],
                ),
                child: const Center(child: Text(' Risque : ')),
              ),
                  space(2,2),
              Container(
                height: 50,
                child: Center(child: Image.asset('./images/sncf-logo.png')),
              ),
                  space(2,2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      minimumSize: const Size(100, 50),
                      primary: Colors.yellow,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const VueAgregeeMediumPage()));
                  },
                  child: const Text('Vue agrégée',style: TextStyle(color: Colors.black),),
                ),
              ),
            ]),
          ),
        )),
    );
  }
}
