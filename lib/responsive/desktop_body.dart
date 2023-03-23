import 'package:flutter/material.dart';
import '../constantsResponsive.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      drawer: header(context),
      body: const Padding(
        padding:  EdgeInsets.all(8.0),
        child:  Column(
          children: [
            Expanded(
              child: Align(
                child: Text('Bienvenue sur le projet Suivi de Projets', textAlign: TextAlign.center,
                textScaleFactor: 3,),
              ),
            ),
            Expanded(
              child: Align(
                child: Text('Cette application est développée en Flutter/Dart', textAlign: TextAlign.center,
                    textScaleFactor: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
