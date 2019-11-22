/*
List里面常用的属性和方法：

常用属性：
  length          长度
  reversed        翻转
  isEmpty         是否为空
  isNotEmpty      是否不为空

常用方法：  
  add         增加
  addAll      拼接数组
  indexOf     查找  传入具体值
  remove      删除  传入具体值
  removeAt    删除  传入索引值
  fillRange   修改   
  insert(index,value);  指定位置插入    
  insertAll(index,list) 指定位置插入List
  toList()    其他类型转换成List  
  join()      List转换成字符串
  split()     字符串转化成List
  forEach     遍历
  map
  where       条件
  any        
  every
*/


void main(){

  // List myList = ['香蕉', '苹果', '西瓜'];
  // print(myList[1]); // 苹果


  // var list = new List();
  // list.add('111');
  // list.add('222');
  // print(list); // [111, 222]


  // List里面的属性：
  // List myList = ['香蕉', '苹果', '西瓜'];
  // print(myList.length); // 3
  // print(myList.isEmpty); // false
  // print(myList.isNotEmpty); // true
  // print(myList.reversed);  // [西瓜, 苹果, 香蕉]
  // var newMyList = myList.reversed.toList();
  // print(newMyList); // [西瓜, 苹果, 香蕉]

  // List里面的方法：
  // List myList = ['香蕉', '苹果', '西瓜'];
  // myList.add('桃子');   // 增加数据  增加一个
  // myList.addAll(['桃子', '葡萄']);  // 拼接数组
  // // print(myList); // [香蕉, 苹果, 西瓜, 桃子, 桃子, 葡萄]

  // print(myList.indexOf('苹x果'));  // -1 (indexOf 查找数据 查找不到返回-1  查找到返回索引值)
  // myList.remove('西瓜');
  // myList.removeAt(1);
  // print(myList); // [香蕉, 桃子, 桃子, 葡萄]
  

  // List myList = ['香蕉', '苹果', '西瓜'];
  // myList.fillRange(1, 2, 'aaa');  // 修改索引 1 和 2 的元素
  // myList.fillRange(1, 3,'aaa');  
  // myList.insert(1, 'aaa'); // 往索引1的元素插入 一个 元素
  // myList.insertAll(1, ['aaa','bbb']);  // 往索引1的元素插入 多个 元素
  // print(myList); // [香蕉, aaa, bbb, aaa, aaa, aaa]


  List myList = ['香蕉', '苹果', '西瓜'];
  var str = myList.join('-');   // list转换成字符串
  print(str); // 香蕉-苹果-西瓜
  print(str is String);  // true
  var list = str.split('-');
  print(list); // ['香蕉', '苹果', '西瓜']
  print(list is List); // true
}