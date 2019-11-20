import 'package:flutter/material.dart';
import 'listData.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('叶修', style: TextStyle(fontSize: 28)),
                subtitle: Text('iOS高级工程师')
              ),
              Divider(),
              ListTile(title: Text('电话：138001380000')),
              ListTile(title: Text('地址：广东省东莞市'))
            ]
          )
        ),

        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('叶秋', style: TextStyle(fontSize: 28)),
                subtitle: Text('Android高级工程师')
              ),
              Divider(),
              ListTile(title: Text('电话：138001380001')),
              ListTile(title: Text('地址：广东省深圳市'))
            ]
          )
        )
      ]
    );
  }
}

class CardWithImageTextWidget extends StatelessWidget {

  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value){
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(value['imageUrl'], fit: BoxFit.cover)
              ),
              ListTile(
                title: Text(value['title']),
                subtitle: Text(value['description'], overflow: TextOverflow.ellipsis),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value['imageUrl']),
                )
              )
            ]
          )
        );
      }).toList()
    );
  }
}