/*
Datr中的多态：
  允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。

  子类的实例赋值给父类的引用。
  
  多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。

*/


abstract class Animal {
  eat();   // 抽象方法 
}

class Dog extends Animal {
  @override
  eat() {
     print('小狗在吃骨头');
  }
  run(){
    print('小狗在跑');
  }
}
class Cat extends Animal {
  @override
  eat() {   
    print('小猫在吃鱼');
  }
  run(){
    print('小猫在跑');
  }
}

main() {

  // Dog d = new Dog();
  // d.eat();
  // d.run();


  // Cat c = new Cat();
  // c.eat();

  Animal a1 = new Dog();
  a1.eat(); // 小狗在跑

 
  Animal a2 = new Cat();
  a2.eat(); // 小猫在跑
}