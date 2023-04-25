import 'package:flutter/material.dart';

class MyAnimatedContainers extends StatefulWidget {
  @override
  _MyAnimatedContainersState createState() => _MyAnimatedContainersState();
}

class _MyAnimatedContainersState extends State<MyAnimatedContainers> {
  bool _isExpanded1 = false;
  bool _isExpanded2 = false;
  bool _isExpanded3 = false;
  bool _isExpanded4 = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 50,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isExpanded1 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isExpanded1 = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
                width: _isExpanded1 ? 400 : 100,
                height: _isExpanded1 ? 400 : 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 50,
            right: MediaQuery.of(context).size.width / 2 + 50,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isExpanded2 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isExpanded2 = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
                width: _isExpanded2 ? 400 : 100,
                height: _isExpanded2 ? 400 : 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 2 + 50,
            right: MediaQuery.of(context).size.width / 2 + 50,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isExpanded3 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isExpanded3 = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
                width: _isExpanded3 ? 400 : 100,
                height: _isExpanded3 ? 400 : 100,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height / 2 + 50,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isExpanded4 = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isExpanded4 = false;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOut,
                width: _isExpanded4 ? 400 : 100,
                height: _isExpanded4 ? 400 : 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
