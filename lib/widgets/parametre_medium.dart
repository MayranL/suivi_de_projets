import 'package:flutter/material.dart';

class ParametreMediumPage extends StatefulWidget {
  const ParametreMediumPage({Key? key}) : super(key: key);

  @override
  State<ParametreMediumPage> createState() => ParametreMediumPageState();
}

class ParametreMediumPageState extends State<ParametreMediumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Align(
                child: Text('Vous voici sur la page des paramètres !', textAlign: TextAlign.center,
                    textScaleFactor: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
