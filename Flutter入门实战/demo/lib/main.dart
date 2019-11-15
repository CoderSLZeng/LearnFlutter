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
    return MaterialApp( 
      title: "我是一个标题", // 标题
      home: Scaffold(      // 主页
        appBar: AppBar(
          title: Text("首页"),
          elevation: 30.0, // 设置标题阴影 不需要的话值设置成0.0
        ),
        body: Home(),
      ),
      theme: ThemeData( // 设置主题颜色
        primarySwatch: Colors.yellow
      ),
    );
  }
}

// Home 组件
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomCenter();    
  }
}

// 自定义 

// 自定义 Center 组件
class CustomCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回一个 Center 组件
    return Center(
      child: CustomContainer()
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "我是一个Container视图里面的文本",
        textAlign: TextAlign.left, // 文本对齐方式
        overflow: TextOverflow.ellipsis, // 文字超出屏幕之后的处理方式
        maxLines: 1, // 最大显示2行
        textScaleFactor: 1.8, // 文字缩放1.8倍
        style: TextStyle(
          fontSize: 16.0, // 文字大小
          color: Colors.red, // 文字颜色
          fontWeight: FontWeight.w800, // 文字粗细
          fontStyle: FontStyle.italic, // 文字样式：斜体
          decoration: TextDecoration.lineThrough, // 文字装饰线：删除线
          decorationColor: Colors.white, // 文字装饰线颜色
          decorationStyle: TextDecorationStyle.dashed, // 文字装饰线风格：虚线
          letterSpacing: 5.0
        ),
      ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration( // 容器装饰
        color: Colors.blue, // 背景颜色
        border: Border.all(  // 边框
          color: Colors.yellow,
          width: 2.0
        ),
        borderRadius: BorderRadius.all( // 圆角
          Radius.circular(10)
        )
      ),
      padding: EdgeInsets.all(20), // 内边距统一设置
      // padding: EdgeInsets.fromLTRB(10, 30, 5, 0), //  内边距分别设置：left, top, right, bottom
      // margin: EdgeInsets.fromLTRB(10, 30, 5, 0),  //  外边距分别设置：left, top, right, bottom
      // transform: Matrix4.translationValues(100, 0, 0), // x方向偏移100
      // transform: Matrix4.rotationZ(0.3), // Z 轴旋转  
      // transform: Matrix4.diagonal3Values(1.2, 1, 1), // 3D旋转
      alignment: Alignment.bottomLeft // 内容底部左对齐
    );   
  }
}

// 自定义 Text 组件
class CustomText extends StatelessWidget {
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