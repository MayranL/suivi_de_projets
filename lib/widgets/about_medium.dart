import 'package:flutter/material.dart';

class AboutMediumPage extends StatefulWidget {
  const AboutMediumPage({Key? key}) : super(key: key);

  @override
  State<AboutMediumPage> createState() => AboutMediumPageState();
}

class AboutMediumPageState extends State<AboutMediumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Align(
                child: Text('Page de about Grande', textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
