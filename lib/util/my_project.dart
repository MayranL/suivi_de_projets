import 'package:flutter/material.dart';
import 'package:suivi_de_projets/constants.dart';

import '../function/cadrage.dart';
import '../function/ouvertureProduction.dart';
import '../function/realisation.dart';
import 'animated_container.dart';
import '../function/hebergement.dart';

bool isHover = false;

class MyProject extends StatelessWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AffichageInfo();
    //return DraggableContainerList();
  }
}

class AffichageInfo extends StatefulWidget {
  const AffichageInfo({Key? key}) : super(key: key);

  @override
  State<AffichageInfo> createState() => _AffichageInfoState();
}

class _AffichageInfoState extends State<AffichageInfo> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height < 800) {
      //Affichage en mode téléphone
      if (MediaQuery.of(context).size.width < 600) {
        return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: AspectRatio(
              aspectRatio: 1,
              child: Scrollbar(
                isAlwaysShown: true,
                controller: controller,
                scrollbarOrientation: ScrollbarOrientation.right,
                thickness: 10,
                // Afficher la barre de défilement à droite
                child: ListView.separated(
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index) {
                    switch (index) {
                      case 0:
                        return Hebergement();
                      case 1:
                        return Cadrage();
                      case 2:
                        return Realisation();
                      case 3:
                        return OuvertureProduction();
                      default:
                        return SizedBox.shrink();
                    }
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 8),
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  controller: controller,
                ),
              ),
            ));
      } else if (MediaQuery.of(context).size.width < 1400) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Hebergement(),
                Cadrage(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Realisation(),
                OuvertureProduction(),
              ],
            )
          ],
        );
      } else {
        return GridView.count(
          //crossAxisCount: 2,
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(20),
          children: [
            Hebergement(),
            Cadrage(),
            Realisation(),
            OuvertureProduction(),
          ],
        );
      }
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hebergement(),
              space(50, 50),
              Cadrage(),
            ],
          ),
          space(50, 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Realisation(),
              space(50, 50),
              OuvertureProduction(),
            ],
          ),
        ],
      );
    }
  }
}

//TODO : DraggableContainer
/*
class DraggableContainer extends StatefulWidget {
  final Offset position;
  final Color color;

  DraggableContainer({required this.position, required this.color});

  @override
  _DraggableContainerState createState() => _DraggableContainerState();
}

class _DraggableContainerState extends State<DraggableContainer> {
  late Offset _position;

  @override
  void initState() {
    super.initState();
    _position = widget.position;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _position.dx,
      top: _position.dy,
      child: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          setState(() {
            _position += details.delta;
          });
        },
          child: Hebergement()
          ),
    );
  }
}

class DraggableContainerList extends StatefulWidget {
  @override
  _DraggableContainerListState createState() => _DraggableContainerListState();
}

class _DraggableContainerListState extends State<DraggableContainerList> {
  List<DraggableContainer> _containers = [
    DraggableContainer(position: Offset(50, 50), color: Colors.red),
    DraggableContainer(position: Offset(300, 300), color: Colors.green),
    DraggableContainer(position: Offset(600, 600), color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _containers,
    );
  }
}
*/

//TODO : Affichage de la liste des informations en sous vue agrégée
/*
List<String> dataList2 = ['Element 1', 'Element 2', 'Element 3', 'Element 4'];

List<Container> containerList2 = dataList2.map((element) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
    ),
    child: Center(
      child: Text(element),
    ),
  );
}).toList();

return Column(
mainAxisAlignment: MainAxisAlignment.center,
children: containerList2,
);
 */
