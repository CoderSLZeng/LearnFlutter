import 'package:flutter/material.dart';

// 本地图片 组件
class LocationImageWidget extends StatelessWidget {
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
class NetworkImageWidget extends StatelessWidget {
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
class BorderRadiusImageWidget extends StatelessWidget {
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
class ClipOvalImageWidget extends StatelessWidget {
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