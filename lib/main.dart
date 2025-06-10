import 'package:flutter/material.dart';

abstract class Pet {
  String name;
  Pet(this.name);
}

mixin Swimable{
  void swim() => print ("Swimming");
}
mixin Walkable {
  void walk() => print("Walking");
}

mixin Flyable {
  void fly() ;
}

class Dog extends Pet with Walkable , Swimable{
  Dog(String name) : super(name);
}

class Parrot extends Pet with Flyable {
  Parrot(String name) : super(name);

  @override
  void fly() {
    print("Flying");
  }
}

void main() {
  var dog = Dog("3ntr");
  var parrot = Parrot("Bob");

  dog.walk();
  dog.swim();

  parrot.fly();
}