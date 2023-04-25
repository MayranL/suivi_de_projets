import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OuvertureProduction extends StatefulWidget {
  const OuvertureProduction({Key? key}) : super(key: key);

  @override
  State<OuvertureProduction> createState() => _OuvertureProductionState();
}

class _OuvertureProductionState extends State<OuvertureProduction> {

  Map<String,String> _map = {
    'text1' : "",
    'text2': "",
    'text3': "",
  };

  String text1 = "";
  String text2 = "";
  String text3 = "";

  String title = "Edit OuvertureProd";
  String labelText1 = "Habilitation utilisateurs : ";
  String labelText2 = "Statut";
  String labelText3 = "Risque";


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
          child: Center(
              child: Text(labelText1 + _map['text1']!,
                  textAlign: TextAlign.center)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(labelText2 + _map['text2']!)),
        ),
        Container(
          height: 50,
          child: Center(child: Text(labelText3 + _map['text3']!)),
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
                    title: Text(title),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText1,
                          ),
                          initialValue: _map['text1'],
                          onChanged: (value) {
                            setState(() {
                              text1 = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText2,
                          ),
                          initialValue: _map['text2'].toString(),
                          onChanged: (value) {
                            setState(() {
                              text2 = value;
                            });
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText3,
                          ),
                          initialValue: _map['text3'].toString(),
                          onChanged: (value) {
                            setState(() {
                              text3 = value;
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
                            _map['text1'] = text1;
                            _map['text2'] = text2;
                            _map['text3'] = text3;
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