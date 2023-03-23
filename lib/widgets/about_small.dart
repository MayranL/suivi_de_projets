import 'package:flutter/material.dart';

class AboutSmallPage extends StatefulWidget {
  const AboutSmallPage({Key? key}) : super(key: key);

  @override
  State<AboutSmallPage> createState() => AboutSmallPageState();
}

class AboutSmallPageState extends State<AboutSmallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Align(
                child: Text('Page de about small', textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
