import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-f214cb00231a4784.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-6f3e06b72ac3f406.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-2e006a5894bbab1c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-7bd40d0269c75a40.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-684693c44f575ace.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-3b56e58df8c7e1c7.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-a3b61e6cf2426326.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',
            fit: BoxFit.cover
            )
          ),
        ]
      )
    );
  }
}

class IconContainerWidget extends StatelessWidget {

  double size;
  IconData icon;
  Color color;

  IconContainerWidget(this.icon, {this.size, this.color = Colors.blue}) {
    this.size = 32.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: this.size + 60,
      height: this.size + 60,
      color: this.color,
      child: Center(
        child: Icon(this.icon, color: Colors.white, size: this.size)
      )
    );
  }
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 500,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconContainerWidget(Icons.home, color: Colors.red),
          IconContainerWidget(Icons.search, color: Colors.green),
          IconContainerWidget(Icons.send, color: Colors.orange)
        ]
      )
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: 500,
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconContainerWidget(Icons.home, color: Colors.red),
          IconContainerWidget(Icons.search, color: Colors.green),
          IconContainerWidget(Icons.send, color: Colors.orange)
        ]
      )
    );
  }
}


class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: IconContainerWidget(Icons.home)
          ),
          SizedBox(width: 10),

          Expanded(
            flex: 3,
            child: IconContainerWidget(Icons.search)
          )

        ]
      )
    );
  }
}

/*
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text('data'),
              )
            )
          ]
        ),

        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-f214cb00231a4784.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240', fit: BoxFit.cover)
              )
            ),
            SizedBox(width: 10),

            Expanded(
              flex: 1,
              child: ListView(
                children: <Widget>[
                  Container(
                height: 85,
                child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-6f3e06b72ac3f406.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240', fit: BoxFit.cover),
              ),
              SizedBox(height: 10),
              Container(
                height: 85,
                child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-2e006a5894bbab1c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240', fit: BoxFit.cover),
              )
                ],
              )
            )
          ]
        )
      ]
    );
    
  }
}
*/

/**
 * https://upload-images.jianshu.io/upload_images/8863827-f214cb00231a4784.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240
https://upload-images.jianshu.io/upload_images/8863827-6f3e06b72ac3f406.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240
https://upload-images.jianshu.io/upload_images/8863827-2e006a5894bbab1c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240
 */

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Row(
          children: <Widget>[
            Expanded(
              child:   Container(
                height: 180,
                color: Colors.black,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-f214cb00231a4784.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',fit: BoxFit.cover),
              )
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-6f3e06b72ac3f406.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',fit: BoxFit.cover),

                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.network('https://upload-images.jianshu.io/upload_images/8863827-2e006a5894bbab1c.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',fit: BoxFit.cover),
                    )
                  ],
                )
              )
            ),

          ],
        )
      ],
    );
  }
}