import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/painting.dart';

import 'package:flutter/material.dart';class Graph {
  final String chefDeProjet;
  final int nbProjet;
  final charts.Color color;
  Graph(this.chefDeProjet, this.nbProjet, Color color) :
  this.color=charts.Color(g:color.green, r:color.red, a:color.alpha, b:color.blue);
}