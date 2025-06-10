import 'package:flutter/material.dart';

abstract class Pet {
  String name;
  Pet(this.name);
}

mixin Swimable {
  void swim() => print("Swimming");
}
mixin Walkable {
  void walk() => print("Walking");
}

mixin Talkable {
  void talk() => print("Talking");
}
mixin Flyable {
  void fly();
}



class Dog extends Pet with Walkable, Swimable {
  Dog(String name) : super(name);
}

class Parrot extends Pet with Flyable,Talkable {
  Parrot(String name) : super(name);

  @override
  void fly() {
    print("Flying");
  }
}

extension StringExtensions on String {
  String toTitleCase() {
    if (isEmpty) return this;
    var res = "";
    var isCapitalized = true;

    for (var i = 0; i < length; i++) {
      var currChar = this[i];
      if (currChar == ' ') {
        isCapitalized = true;
        res += currChar;
      } else {
        res += isCapitalized ? currChar.toUpperCase() : currChar.toLowerCase();
        isCapitalized = false;
      }
    }
    return res;
  }

  bool isValidEmail() {
    if (isEmpty) return false;
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');

    return emailRegex.hasMatch(this);
  }

  String reverse() {
    if (isEmpty) return this;
    var result = '';
    for (var i = length - 1; i >= 0; i--) {
      result += this[i];
    }
    return result;
  }
}

void main() {
  var dog = Dog("3ntr");
  var parrot = Parrot("Bob");

  dog.walk();
  dog.swim();
  parrot.fly();
  parrot.talk();

  print("""/********************************/
  
""");

  print("hello world".toTitleCase());
  print("kemad@gmail.com".isValidEmail());
  print("kemad.gmail@".isValidEmail());
  print("hello".reverse());
}
