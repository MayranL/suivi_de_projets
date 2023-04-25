import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hebergement extends StatefulWidget {
  @override
  _HebergementState createState() {
    return _HebergementState();
  }
}

class _HebergementState extends State<Hebergement> {
  Map<String,String> _map = {
    'redacDAL' : "",
    'devisDAT': "",
    'statut': "",
    'risque': "",
  };

  String _redacDAL = "";
  String _devisDAT = "";
  String _statut = "";
  String _risque = "";

  @override
  Widget build(BuildContext context) {
    // Widget code here
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
                              _redacDAL = value;
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
                              _devisDAT = value;
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
                              _statut = value;
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
                              _risque = value;
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
                          setState(() {
                            _map['redacDAL'] = _redacDAL;
                            _map['devisDAT'] = _devisDAT;
                            _map['statut'] = _statut;
                            _map['risque'] = _risque;
                          });
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
