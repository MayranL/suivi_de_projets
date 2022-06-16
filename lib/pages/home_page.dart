import 'package:flutter/material.dart';

import '../models/make_it_responsive.dart';
import '../widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    return Scaffold(
      appBar: (screenSize == ScreenSize.small)
          ? WebBar(size: size)
          : WebBar(size: size),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
