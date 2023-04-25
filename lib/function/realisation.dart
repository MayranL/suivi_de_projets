import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Realisation extends StatefulWidget {
  const Realisation({Key? key}) : super(key: key);

  @override
  State<Realisation> createState() => _RealisationState();
}

class _RealisationState extends State<Realisation> {

  Map<String,String> _map = {
    'text1' : "",
    'text2': "",
    'text3': "",
    'text4': "",
  };

  String text1 = "";
  String text2 = "";
  String text3 = "";
  String text4 = "";

  String title = "Edit Realisation";
  String labelText1 = "Découpage en sprint : ";
  String labelText2 = "Dev des US : ";
  String labelText3 = "Statut : ";
  String labelText4 = "Risque : ";


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
          child: Center(child: Text(labelText1 + _map['text1']!)),
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
          height: 50,
          child: Center(child: Text(labelText4 + _map['text4']!)),
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
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: labelText4,
                          ),
                          initialValue: _map['text4'].toString(),
                          onChanged: (value) {
                            setState(() {
                              text4 = value;
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
                            _map['text4'] = text4;
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
