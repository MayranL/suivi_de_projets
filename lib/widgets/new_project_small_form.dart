import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/make_it_responsive.dart';

class NewProjectSmallForm extends StatefulWidget {
  const NewProjectSmallForm({Key? key}) : super(key: key);

  @override
  createState() => NewProjectSmallFormState();
}

class NewProjectSmallFormState extends State<NewProjectSmallForm> {
  final _formKey = GlobalKey<FormState>();
  String _nom = 'Aucun nom de saisie.';
  String _porteur = 'Aucun Porteur de saisie.';
  String _secteur = 'Aucun Porteur de saisie.';
  String _statut = 'Aucun Porteur de saisie.';
  double _probability = 1.0;
  double _criticity = 1.0;
  String _selectedValue = '1';
  String _txt = '1';

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    ScreenSize _screenSize = MakeItResponsive().getScreenSize(context);
    bool _isSmallScreen = (_screenSize == ScreenSize.small);

    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              child: const Text(
                'Nouveau Projet',
                style: TextStyle(
                    color: Colors.black26,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: 'Avenir',
                    fontStyle: FontStyle.normal),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Nom"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: 'Saisir le nom du projet...'),
                onChanged: (value) {
                  setState(() {
                    _nom = value;
                  });
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Porteur"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: 'Saisir le nom du porteur...'),
                onChanged: (value) {
                  setState(() {
                    _porteur = value;
                  });
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Secteur"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: 'Saisir le secteur du projet...'),
                onChanged: (value) {
                  setState(() {
                    _secteur = value;
                  });
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Statut"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: const InputDecoration(
                    hintText: 'Saisir le statut du projet...'),
                onChanged: (value) {
                  setState(() {
                    _statut = value;
                  });
                },
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: const Text(
                  'Niveau de Risque',
                  style: TextStyle(
                      color: Colors.black26,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      fontFamily: 'Avenir',
                      fontStyle: FontStyle.normal),
                )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Probabilité"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: (3 * _size.width) / 4,
                    child: Slider(
                        value: _probability,
                        label: '$_probability',
                        min: 1.0,
                        max: 5.0,
                        divisions: 8,
                        onChanged: (value) {
                          setState(() {
                            _probability = value;
                          });
                        }),
                  ),
                  Expanded(
                      child: Text(
                    '$_probability',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20),
                  ))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Criticité"),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: (3 * _size.width) / 4,
                      child: Slider(
                          value: _criticity,
                          label: '$_criticity',
                          min: 1.0,
                          max: 5.0,
                          divisions: 8,
                          onChanged: (value) {
                            setState(() {
                              _criticity = value;
                            });
                          }),
                    ),
                    Expanded(
                        child: Text(
                      '$_criticity',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20),
                    ))
                  ],
                )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Estimation des besoins (nb de pers.)"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: DropdownButtonFormField(
                  value: _selectedValue,
                  hint: const Text('Selectionner une valeur'),
                  isExpanded: true,
                  items: listeDropdown,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedValue = value!;
                    });
                  }),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: const Text("Niveau de risque estimé"),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: MaterialButton(
                color: Colors.green,
                shape: const CircleBorder(),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    _txt,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 20, right: 20),
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
                      onPressed: () {},
                      child: const Text('Annulation'),
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
                      onPressed: () {},
                      child: const Text('Enregistrer'),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
