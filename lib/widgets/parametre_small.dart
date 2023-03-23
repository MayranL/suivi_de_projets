import 'package:flutter/material.dart';

class ParametreSmallPage extends StatefulWidget {
  const ParametreSmallPage({Key? key}) : super(key: key);

  @override
  State<ParametreSmallPage> createState() => ParametreSmallPageState();
}

class ParametreSmallPageState extends State<ParametreSmallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Expanded(
              child: Align(
                child: Text('Page settings petite', textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
