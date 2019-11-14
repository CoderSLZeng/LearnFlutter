// 每一个 flutter 项目的 lib 目录里面都有一个 main.dart 这个文件就是 flutter 的入口文件

import 'package:flutter/material.dart'; // 快捷键：f(flutter) + i(import) + m(material) = fim

// dart 的入口方法
void main() {
  // flutter 的入口方法
  runApp(MyApp());
}

/**
 * 自定义组件其实就是一个类
 * 需要继承 StatelessWidget\StatefullWidget
 * StatelessWidget：无状态组件，状态不可变的 widget
 * StatefullWidget：有状态组件，持有状态可能在 widget 生命周期改变
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回一个 Center 组件
    return Center(
      child: Text( 
        "我是 Dart 一个文本内容",
        textDirection: TextDirection.ltr, // ltr = left to right 文本从左往右对齐
        style: TextStyle( // 给 Text 组件增加一些装饰
          fontSize: 30.0, // Dart 数字都是 Number 类型，必须要小数点
          fontWeight: FontWeight.bold,
          // color: Colors.red
          color: Color.fromRGBO(0, 255, 0, 0.5)
        )
    )
    );
  }
}