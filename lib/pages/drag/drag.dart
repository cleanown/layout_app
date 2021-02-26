import 'package:flutter/material.dart';

class DragTest extends StatefulWidget {
  @override
  _DragTestState createState() => _DragTestState();
}

class _DragTestState extends State<DragTest> {

  double _chiLeft = 50;
  double _chiTop = 50;

  @override
  Widget build(BuildContext context) {
    // double mediaPaddingTop =  MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
          ),
          Positioned(
            left: _chiLeft,
            top: _chiTop,
            child: GestureDetector(
              child: Container(
                width: 70,
                height: 70,
                color: Colors.orange,
              ),
              onPanStart: (DragStartDetails details) {
                print(details);
              },
              onPanUpdate: (DragUpdateDetails details) {
                setState((){
                  _chiLeft = _chiLeft + details.delta.dx;
                  _chiTop = _chiTop + details.delta.dy;
                });
              },
              onPanCancel: () {
              },
            )
          )
        ],
      ),
    );
  }
}
