import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadrage extends StatefulWidget {
  const Cadrage({Key? key}) : super(key: key);

  @override
  State<Cadrage> createState() => _CadrageState();
}

class _CadrageState extends State<Cadrage> {
  Map<String,String> _map1 = {
    'text1': "",
    'text2': "",
    'text3': "",
    'text4': "",
  };

  String _text1 = "";
  String _text2 = "";
  String _text3 = "";
  String _text4 = "";

  static const String title = "Edit Cadrage";
  static const String labelText1 = "Redaction du CDC : ";
  static const String labelText2 = "Devis sur le cdc : ";
  static const String labelText3 = "Statut : ";
  static const String labelText4 = "Risque : ";

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
                title,
                style: TextStyle(fontSize: 25),
              )),
        ),
        Container(
          height: 50,
          child: Center(child: Text(labelText1 + _map1['text1']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(labelText2 + _map1['text2']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(labelText3 + _map1['text3']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(labelText4 + _map1['text4']!)),
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
                  // return popUp(title,labelText1...);
                  return AlertDialog(
                    title: Text('Cadrage du besoin'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText1,
                          ),
                          initialValue: _map1['text1'],
                          onChanged: (value) {
                            setState(() {
                              _text1 = value;
                              print("text1 j'y suis");
                              print(_text1);
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText2,
                          ),
                          initialValue: _map1['text2'].toString(),
                          onChanged: (value) {
                            setState(() {
                              _text2 = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText3,
                          ),
                          initialValue: _map1['text3'].toString(),
                          onChanged: (value) {
                            setState(() {
                              _text3 = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText4,
                          ),
                          initialValue: _map1['text4'].toString(),
                          onChanged: (value) {
                            setState(() {
                              _text4 = value;
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
                            _map1['text1'] = _text1;
                            _map1['text2'] = _text2;
                            _map1['text3'] = _text3;
                            _map1['text4'] = _text4;
                            print("suis la ");
                            print(_map1);
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
      ]),);
  }
}
