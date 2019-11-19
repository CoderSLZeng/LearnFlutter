import 'package:flutter/material.dart';

// 自定义 Center 组件
class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回一个 Center 组件
    return Center(
      child: TextWidget()
    );
  }
}

// 自定义 Text 组件
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text( 
        "我是 Dart 一个文本内容",
        textDirection: TextDirection.ltr, // ltr = left to right 文本从左往右对齐
        style: TextStyle( // 给 Text 组件增加一些装饰
          fontSize: 30.0, // Dart 数字都是 Number 类型，必须要小数点
          fontWeight: FontWeight.bold,
          // color: Colors.red
          color: Color.fromRGBO(0, 255, 0, 0.5)
        ),
    );
  }
  
}