import 'package:flutter/material.dart';

import '../models/make_it_responsive.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: (size.height / 2) - ((screenSize == ScreenSize.small) ? 30 : 20),
          left: size.width / 5,
          right: size.width / 5,
        ),
        child: (screenSize == ScreenSize.small) ? big() : big(),
      ),
    );
  }

  Widget big() {
    return Container(
      height: 40,
      child: Card(
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //children: ,
        ),
      ),
    );
  }
}
