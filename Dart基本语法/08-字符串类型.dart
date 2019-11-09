/*
Dart数据类型：字符串类型
*/

void main(){

  // 1、字符串定义的几种方式

  // 类型推导
  // var str1 = 'this is str1';
  // var str2 = "this is str2";
  // print(str1);
  // print(str2);

  // 指定类型
  // String str1 = 'this is str1';
  // String str2 = "this is str2";
  // print(str1);
  // print(str2);


  // 换行并保留缩进：3个 ' 或 " 
  // String str1 = '''this is str1
  // this is str1

  // this is str1
  // ''';

  //  print(str1);

  //   String str1 = """
  //   this is str1
  //   this is str1

  //   this is str1
  //   """;

  //  print(str1);


  // 2、字符串的拼接

  String str1 = '你好';
  String str2 = 'Dart';
  // 2.1 美元符
  // print("$str1 $str2");
  // 2.2 +
  print(str1 + str2);
  print(str1 + " " + str2);
}

