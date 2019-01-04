import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  double dotSize = 30.0;
  double dotSeparation = 100.0;
  double dragStartSeparation;

  Offset dragStartOffset;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget dot() {
    return Container(
      height: dotSize,
      width: dotSize,
      decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }

  void _dragStart(DragStartDetails drag) {
    dragStartOffset = drag.globalPosition;
    dragStartSeparation = dotSeparation;
  }

  void _dragUpdate(DragUpdateDetails drag) {
    print(drag);
    dotSeparation = dragStartSeparation +
        (drag.globalPosition.dx - dragStartOffset.dx) * 0.5;
    if (dotSeparation < (dotSize * 2))
      dotSeparation = dotSize * 2;
    else if (dotSeparation > (MediaQuery.of(context).size.width + dotSize * 2))
      dotSeparation = (MediaQuery.of(context).size.width + dotSize * 2);
    setState(() {});
  }

  void _dragEnd(DragEndDetails drag) {}

  Widget _body() {
    return SafeArea(
      child: GestureDetector(
        onHorizontalDragStart: _dragStart,
        onHorizontalDragUpdate: _dragUpdate,
        onHorizontalDragEnd: _dragEnd,
        child: Container(
          color: Colors.white,
          child: Center(
            child: Container(
              width: (dotSeparation + 2 * dotSize),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  dot(),
                  dot(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
