import 'package:flutter/material.dart';
import 'package:suivi_de_projets/util/my_project.dart';
import 'package:suivi_de_projets/widgets/home_medium.dart';
import '../constantsResponsive.dart';
import '../constants.dart';

class VueAgregeeMediumPage extends StatefulWidget {
  const VueAgregeeMediumPage({Key? key}) : super(key: key);

  @override
  State<VueAgregeeMediumPage> createState() => VueAgregeeMediumPageState();
}

class VueAgregeeMediumPageState extends State<VueAgregeeMediumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: header(context),
        body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            color: Colors.grey,
            child: SizedBox(
              width: 150,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Expanded(
                    child: Center(
                      child: Text('Filtres',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  Container(
                        child: Column(
                          children: menuItems
                              .map((el) => CheckboxListTile(
                            title: Text(el['title'],
                                style: const TextStyle(
                                  color: Colors.white,
                                )),
                            value: el['status'],
                            onChanged: (val) {
                              setState(() {
                                el['status'] = val!;
                              });
                            },
                          ))
                              .toList(),
                        ),

                      ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(20),
                            minimumSize: const Size(100, 50),
                            primary: Colors.orange,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const HomeMediumPage()));
                        },
                        child: const Text('Vue classique'),
                      ),
                    ),
                ],
              ),
            ),
          ),
          space(50,50),
          Expanded(
              child: MyProject(),
          ),
              ]));
  }
}
