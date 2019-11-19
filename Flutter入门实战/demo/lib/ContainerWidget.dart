import 'package:flutter/material.dart';

// 自定义 Container 组件
class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "我是一个Container视图里面的文本",
        textAlign: TextAlign.left, // 文本对齐方式
        overflow: TextOverflow.ellipsis, // 文字超出屏幕之后的处理方式
        maxLines: 2, // 最大显示2行
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