import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Center(
          child: Container(
            width: 200,
            child: AspectRatio(
              aspectRatio: 2.0 / 1.0,
              child: Container(
                color: Colors.red
              )
            )
          )
        );
	}
}