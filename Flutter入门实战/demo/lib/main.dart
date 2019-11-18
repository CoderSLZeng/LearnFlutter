// 每一个 flutter 项目的 lib 目录里面都有一个 main.dart 这个文件就是 flutter 的入口文件

import 'package:flutter/material.dart'; // 快捷键：f(flutter) + i(import) + m(material) = fim

// dart 的入口方法
void main() => runApp(MyApp()); // flutter 的入口方法

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
    // return CustomCenter();
    // returnCustomListView CustomContainer();
    // return AssetImage();
    // return networkImage();   
    // return BorderRadiusImage(); 
    // return ClipOvalImage();
    // return BaseListView();
    // return HorizontalListView();
    return DynamicListView();
  }
}

// 动态列表 组件
class DynamicListView extends StatelessWidget {

  List list = new List();
  DynamicListView({Key key}): super(key: key) {
    for (var i = 0; i < 20; i++) {
      list.add("这是第${i}条数据");
    }
    print(list);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        print(context);
        return ListTile(
          leading: Icon(Icons.phone),
          title: Text("${list[index]}")
        );
      }
    );
  }
}

// 水平列表 组件
class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      margin: EdgeInsets.all(5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            color: Colors.lightBlue
          ),
          Container(
            width: 180.0,
            color: Colors.amber,
            child: ListView(
              children: <Widget>[
                Image.asset("imgs/02.jpeg"),
                Text('这是一个文本信息',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0)
                )
              ]
            )
          ),
          Container(
            width: 180.0,
            color: Colors.deepOrange
          ),
          Container(
            width: 180.0,
            color: Colors.deepPurpleAccent
          )
        ]
      )
    );
  }
}

// 基础列表 组件
class BaseListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone), // Icon 图标组件
            title: Text("this is title0", style: TextStyle(fontSize: 28.0)),
            subtitle: Text("this is lsubtitle0")
          ),
          ListTile(
            title: Text("this is title1"),
            subtitle: Text("this is subtitle1"),
            trailing: Icon(Icons.phone)
          ),
          ListTile(
            title: Text("this is title2"),
            subtitle: Text("this is subtitle2")            
          ),
          ListTile(
            title: Text("this is title3"),
            subtitle: Text("this is subtitle3")
          ),
          ListTile(
            title: Text("this is title4"),
            subtitle: Text("this is subtitle4")
          )
        ]
      )
    );
  }
}

// 本地图片 组件
class AssetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset("imgs/01.jpeg"),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      )
    );
  }
}

// 远程图片 组件
class networkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          "https://pic.rmb.bdstatic.com/c86255e8028696139d3e3e4bb44c047b.png",
          alignment: Alignment.bottomRight,
          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,
          // fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
        width: 300,
        height: 800,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
        // color: Colors.red,
      )
    );
  }
}

// 圆角图片 组件
class BorderRadiusImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(30)
          // ),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage("https://pic.rmb.bdstatic.com/c86255e8028696139d3e3e4bb44c047b.png")
          )
        ),

      )
    );
  }
}

// 圆形图片 组件
class ClipOvalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.yellow,
        child: ClipOval(
          child: Image.asset("imgs/02.jpeg",
          width: 200,
          height: 200,
          fit: BoxFit.cover
          )
        )
      )
    );
  }
}

// 自定义 Container 组件
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

// 自定义 Center 组件
class CustomCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回一个 Center 组件
    return Center(
      child: CustomText()
    );
  }
}