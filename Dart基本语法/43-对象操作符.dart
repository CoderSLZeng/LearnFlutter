/*
Dart中的对象操作符:

  ?     条件运算符 （了解）
  as    类型转换
  is    类型判断
  ..    级联操作 （连缀）  (记住)
*/

class Person {

  String name;
  num age;

  Person(this.name, this.age);

  void printInfo() {
    print("${this.name}---${this.age}");  
  }
  
}

main() { 

  // Person p;
  // p?.printInfo();


  // Person p = new Person('叶秋', 20);
  // p?.printInfo();


  // Person p = new Person('叶秋', 20);
  // if (p is Person) {
  //     p.name = "李四";
  // } 

  // p.printInfo();
  // print(p is Object);
  

  // var p1;
  // p1 = '';
  // p1 = new Person('叶秋', 20);
  // // p1.printInfo();
  // (p1 as Person).printInfo();


  // Person p1 = new Person('叶秋', 20);
  // p1.printInfo();
  // p1.name = '叶秋222';
  // p1.age = 40;
  // p1.printInfo();


  Person p1 = new Person('叶秋', 20);
  p1.printInfo();
  p1..name = "叶修"
    ..age = 30
    ..printInfo();

}

