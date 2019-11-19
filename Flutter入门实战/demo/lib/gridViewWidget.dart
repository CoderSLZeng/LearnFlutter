import 'package:flutter/material.dart';

import 'listData.dart';

class GridViewWithTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GridView.count(
      crossAxisCount: 2, // 一行的 Widget 数量
      children: <Widget>[
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
        Text('这是一个文本'),
      ]
    );
  }
}


class GridViewWithTextStyleWidget extends StatelessWidget {

  List<Widget> _getListData() {
    List<Widget> list = new List();

    for(var i = 0; i < 20; i++) {
      list.add( 
        Container( 
          alignment: Alignment.center,
          child: Text(
            '这是第$i条数据',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          color: Colors.blue
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20.0, // 水平子 Widget 之间的间距
      mainAxisSpacing: 20.0,  // 垂直子 Widget 之间的间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      childAspectRatio: 0.7,  // 宽度和高度的比例
      children: this._getListData()
    );
  }
}


class GridViewWithImageTextWidget extends StatelessWidget {

  List<Widget> _getListData() {
    var tempList = listData.map
   ((value) {
      return Container(
        child: Column(
          children: <Widget> [
            Image.network(value['imageUrl']),
            SizedBox(height: 12),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15)
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1
          )
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10),
      crossAxisCount: 2,
      children: this._getListData()
    );
  }
}


class GridViewWithBuilderWidget extends StatelessWidget {  

  Widget _getListData(context,index) {
        return Container(            
            child:Column(
                children: <Widget>[
                  Image.network(listData[index]['imageUrl']),
                  SizedBox(height: 12),
                  Text(
                    listData[index]['title'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15 
                      )
                  )
                ]
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color:Color.fromRGBO(233, 233,233, 0.9),
                width: 1
              )
            )
          );
  }

  @override
  Widget build(BuildContext context) {    
    return GridView.builder(
        // 注意
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0, // 水平子 Widget 之间间距
          mainAxisSpacing: 10.0,  // 垂直子 Widget 之间间距        
          crossAxisCount: 2       // 一行的 Widget 数量
        ),
        itemCount: listData.length,
        itemBuilder:this._getListData,
    );
  }
}