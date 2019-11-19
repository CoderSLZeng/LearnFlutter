import 'package:flutter/material.dart';

// 垂直列表 组件（默认）
class VerticalListViewWidget extends StatelessWidget {
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


// 水平列表 组件
class HorizontalListViewWidget extends StatelessWidget {
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

// 动态列表 组件
class DynamicListViewWidget extends StatelessWidget {

  List list = new List();
  DynamicListViewWidget({Key key}): super(key: key) {
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