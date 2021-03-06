/*
  面向对象的三大特性：封装 、继承、多态

  Dart中的类的继承：  
    1、子类使用extends关键词来继承父类
    2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
    3、子类能复写父类的方法 getter 和 setter
*/

class Person {

  String name;
  num age; 

  Person(this.name,this.age);
  
  void printInfo() {
    print("${ this.name }---${ this.age }");  
  }
}


class Student extends Person {
  Student(String name, num age) : super(name, age) {

  }
  
}

main() { 

  // Person p = new Person('叶秋', 20);
  // p.printInfo();


  // Person p1 = new Person('叶修', 20);
  // p1.printInfo();


  Student stu = new Student('叶修', 12);
  stu.printInfo();
}