import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('我是一个自定义按钮'),
      textColor: Theme.of(context).accentColor,
      onPressed: () {  
        print('按钮被点击了');      
      },
    );
  }
}

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
          spacing:10,
          runSpacing: 10,
          // direction: Axis.vertical,
          // alignment:WrapAlignment.spaceEvenly,
          // runAlignment: WrapAlignment.center,
          children: <Widget>[
                MyButton("第1集"),
                MyButton("第2集"),
                MyButton("第3集"),
                MyButton("第4集"),
                MyButton("第5集"),
                MyButton("第6集"),
                MyButton("第7集"),
                MyButton("第8集"),
                MyButton("第9集"),
                MyButton("第10集"),
                MyButton("第11集"),
                MyButton("第3集"),
                MyButton("第4集"),
                MyButton("第5集"),
                MyButton("第6集"),
                MyButton("第7集"),
                MyButton("第8集"),
                MyButton("第9集"),
                MyButton("第10集"),
                MyButton("第11集")
          ]
      
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key); 
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor:Theme.of(context).accentColor,
      onPressed: (){    
        print(this.text);
      }
    );
  }
}