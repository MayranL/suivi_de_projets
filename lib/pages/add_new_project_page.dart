import 'package:flutter/material.dart';
import 'package:suivi_de_projets/widgets/new_project_small_form.dart';

import '../models/make_it_responsive.dart';
import '../widgets/new_project_medium_form.dart';

import 'package:suivi_de_projets/constantsResponsive.dart';

class AddNewProjectPage extends StatefulWidget {
  const AddNewProjectPage({Key? key}) : super(key: key);
  @override
  createState() => AddNewProjectPageState();
}

class AddNewProjectPageState extends State<AddNewProjectPage> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    ScreenSize _screenSize = MakeItResponsive().getScreenSize(context);
    bool _isSmallScreen = (_screenSize == ScreenSize.small);

    return Scaffold(
      appBar: myAppBar,
      drawer: header(context),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            width: (_isSmallScreen) ? _size.width : _size.width - 150,
            child: (_isSmallScreen)
                ? const NewProjectSmallForm()
                : const NewProjectMediumForm(),
          )

        ],
      ),
    );
  }
}
