import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;
import 'package:suivi_de_projets/widgets/graph.dart';
import 'package:pie_chart/pie_chart.dart';

import '../models/make_it_responsive.dart';

var data1 = [
  Graph("chefDeProjet1", 1, Colors.red),
  Graph("chefDeProjet2", 2, Colors.green),
  Graph("chefDeProjet3", 3, Colors.yellow),
  Graph("chefDeProjet4", 4, Colors.blue),
];

var data2 = [
  Graph("chefDeProjet1", 3, Colors.red),
  Graph("chefDeProjet2", 1, Colors.green),
  Graph("chefDeProjet3", 2, Colors.yellow),
  Graph("chefDeProjet4", 1, Colors.blue),
];

var data3 = [
  Graph("chefDeProjet1", 2, Colors.red),
  Graph("chefDeProjet2", 3, Colors.green),
  Graph("chefDeProjet3", 4, Colors.yellow),
  Graph("chefDeProjet4", 2, Colors.blue),
];

Map<String, double> dataMap = {
  "En cours": 10,
  "Fini": 7,
  "Prévu": 11,
};

var series = [
  charts.Series(
      domainFn: (Graph Graph, _) => Graph.chefDeProjet,
      measureFn: (Graph Graph, _) => Graph.nbProjet,
      colorFn: (Graph Graph, _) => Graph.color,
      id: "Graph",
      data: data1,
      labelAccessorFn: (Graph Graph, _) =>
      '${Graph.chefDeProjet} : ${Graph.nbProjet.toString()}')
];

var series2 = [
  charts.Series(
      domainFn: (Graph Graph, _) => Graph.chefDeProjet,
      measureFn: (Graph Graph, _) => Graph.nbProjet,
      colorFn: (Graph Graph, _) => Graph.color,
      id: "Graph",
      data: data2,
      labelAccessorFn: (Graph Graph, _) =>
      '${Graph.chefDeProjet} : ${Graph.nbProjet.toString()}')
];

var series3 = [
  charts.Series(
      domainFn: (Graph Graph, _) => Graph.chefDeProjet,
      measureFn: (Graph Graph, _) => Graph.nbProjet,
      colorFn: (Graph Graph, _) => Graph.color,
      id: "Graph",
      data: data3,
      labelAccessorFn: (Graph Graph, _) =>
      '${Graph.chefDeProjet} : ${Graph.nbProjet.toString()}')
];

var graph1 = charts.BarChart(
  series,
  vertical: false,
  barRendererDecorator: charts.BarLabelDecorator<String>(),
);

var graph2 = charts.BarChart(
  series2,
  vertical: false,
  barRendererDecorator: charts.BarLabelDecorator<String>(),
);

var graph3 = charts.BarChart(
  series3,
  vertical: false,
  barRendererDecorator: charts.BarLabelDecorator<String>(),
);

bool GraphbatonEncours = false;
bool GraphbatonFini = false;

bool test = false;

graphBatonEnCours(BuildContext context) {
  return Container(
      child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //<Widget>[
                Text(
                  "Nombre de projet en cours par personne",
                  style: TextStyle(fontSize: 20, color: Colors.orange),
                ),
                Row(children: <Widget>[
                  SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width / 2,
                    child: graph1,
                  ),
                ])
              ])));
}

graphBatonFini(BuildContext context) {
  return Container(
      child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //<Widget>[
                Text(
                  "Nombre de projet fini par personne",
                  style: TextStyle(fontSize: 20, color: Colors.orange),
                ),
                Row(children: <Widget>[
                  SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width / 2,
                    child: graph2,
                  ),
                ])
              ])));
}

graphBatonPrevu(BuildContext context) {
  return Container(
      child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //<Widget>[
                Text(
                  "Nombre de projet prévu par personne",
                  style: TextStyle(fontSize: 20, color: Colors.orange),
                ),
                Row(children: <Widget>[
                  SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width / 2,
                    child: graph3,
                  ),
                ])
              ])));
}

graphCercle(BuildContext context) {
  return Container(
      child: PieChart(
        dataMap: dataMap,
        chartRadius: MediaQuery.of(context).size.width / 4,
        legendOptions: LegendOptions(
          legendPosition: LegendPosition.bottom,
        ),
        chartValuesOptions: ChartValuesOptions(
          showChartValuesInPercentage: true,
        ),
      ));
}

list(BuildContext context, Size size){
  if(size.width < 865){
    return SingleChildScrollView(
        child: Column(
          children: [
            graphBatonFini(context),
            graphBatonEnCours(context),
            graphBatonPrevu(context),
            spaceBox(),
            graphCercle(context),
          ],
        )
    );
  }else{
    return SingleChildScrollView(
        child: Column(
          children: [
            graphBatonFini(context),
            graphBatonEnCours(context),
            graphBatonPrevu(context)
          ],
        )
    );
  }

}

class DashboardMediumPage extends StatefulWidget {
  const DashboardMediumPage({Key? key}) : super(key: key);

  @override
  State<DashboardMediumPage> createState() => DashboardMediumPageState();
}

class DashboardMediumPageState extends State<DashboardMediumPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    bool isSmallScreen = (screenSize == ScreenSize.small);
    double paddingSize = isSmallScreen ? 10 : (size.width - 500) / 2;

    return Scaffold(
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
                                GraphbatonEncours = true;
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
      spaceBox(),
      list(context, size),
          /*ListView(
          graphBatonPrevu(context),
          graphBatonEnCours(context),
          graphBatonFini(context),
      ),*/
      // Test en fonction du status d'un bouton si graph true alors afficher

    ]));
  }
}
