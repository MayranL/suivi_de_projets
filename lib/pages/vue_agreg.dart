import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:suivi_de_projets/pages/home_page.dart';

import '../models/make_it_responsive.dart';

class VueAgreg extends StatefulWidget {
  const VueAgreg({Key? key}) : super(key: key);

  @override
  createState() => VueAgregState();
}

class VueAgregState extends State<VueAgreg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);

    return Scaffold(
        appBar: getAppBar(context, size),
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
                  Expanded(
                      child: Container(
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
                  )),
                ],
              ),
            ),
          ),
          SizedBox(width: 300,
          height: 300),
          Container(
            alignment: Alignment.center,
              child: Padding(
              padding: EdgeInsets.only(top: 0),
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Nom du Projet',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Porteur',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Secteur',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Statut',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Risque',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Météo',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ],
              rows: const <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('NomProj1')),
                    DataCell(Text('Porteur1')),
                    DataCell(Text('Secteur1')),
                    DataCell(Text('statut1')),
                    DataCell(Text('Risque1')),
                    DataCell(Text('Météo1')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('NomProj2')),
                    DataCell(Text('Porteur2')),
                    DataCell(Text('Secteur2')),
                    DataCell(Text('statut2')),
                    DataCell(Text('Risque2')),
                    DataCell(Text('Météo2')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('NomProj1')),
                    DataCell(Text('Porteur1')),
                    DataCell(Text('Secteur1')),
                    DataCell(Text('statut1')),
                    DataCell(Text('Risque1')),
                    DataCell(Text('Météo1')),
                  ],
                ),
              ],
            ),
          ))
        ]));
  }
}
