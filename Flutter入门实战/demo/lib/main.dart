// 每一个 flutter 项目的 lib 目录里面都有一个 main.dart 这个文件就是 flutter 的入口文件

import 'package:flutter/material.dart'; // 快捷键：f(flutter) + i(import) + m(material) = fim
import 'center_TextWidget.dart';
import 'containerWidget.dart';
import 'imageWidget.dart';
import 'listViewWidget.dart';
import 'gridViewWidget.dart';
import 'layoutWidget.dart';


// dart 的入口方法
void main() => runApp(MyApp()); // flutter 的入口方法

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: '我是一个标题', // 标题
      home: Scaffold(      // 主页
        appBar: AppBar(
          title: Text('Flutter Demo'),
          elevation: 30.0, // 设置标题阴影 不需要的话值设置成0.0
        ),
        body: Home(),
      ),
      theme: ThemeData( // 设置主题颜色
        primarySwatch: Colors.blue
      ),
    );
  }
}

// Home 组件
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return CenterWidget();
    // return ContainerWidget();

    // use Image
    // return LocationImageWidget();
    // return NetworkImageWidget();
    // return BorderRadiusImageWidget(); 
    // return ClipOvalImageWidget();

    // use ListView
    // return VerticalListViewWidget();
    // return HorizontalListViewWidget();
    // return DynamicListViewWidget();

    // use GridView
    // return GridViewWithTextWidget();
    // return GridViewWithTextStyleWidget();
    // return GridViewWithImageTextWidget();
    // return GridViewWithBuilderWidget();
    // return PaddingWidget();
    // return RowWidget();
    // return ColumnWidget();
    // return ExpandedWidget();
    return LayoutDemo();
  }
}