import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        // alignment: Alignment(1, 0.3),
        // alignment: Alignment(1, -0.2),
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            color: Colors.red
          ),

          Text('我是一个文本', 
            style: TextStyle(
              fontSize: 40,
              color: Colors.white
            )
          )
        ]
      )
    );
  }
}


class StackAlignWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(1, -0.2),
              child: Icon(Icons.home, size: 30, color: Colors.white)
            ),

            Align(
              alignment: Alignment.center,
              child: Icon(Icons.search, size: 30, color: Colors.white)
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.settings_applications, size: 30, color: Colors.white)
            )
          ]
        )
      )
    );
  }
}


class StackPositionedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 400,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Icon(Icons.home, size: 40, color: Colors.white)
            ),

            Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.search, size: 30, color: Colors.white)
            ),

            Positioned(
              right: 0,
              child: Icon(Icons.settings_applications, size: 30, color: Colors.white)
            )
          ]
        )
      )
    );
  }
}