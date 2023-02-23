import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/make_it_responsive.dart';
import '../models/mixin_validations.dart';

class NewProjectFiltresForm extends StatefulWidget {
  const NewProjectFiltresForm({Key? key}) : super(key: key);

  @override
  createState() => NewProjectFiltresFromState();
}

class NewProjectFiltresFromState extends State<NewProjectFiltresForm>
    with MixinValidations {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    ScreenSize _screenSize = MakeItResponsive().getScreenSize(context);
    bool _isMediumScreen = (_screenSize == ScreenSize.medium);

    return Form(
      key: _formKey,
      child: Column(children: [
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
      ]),
    );
  }
}
