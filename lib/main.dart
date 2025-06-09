import 'dart:math';

import 'package:flutter/material.dart';

void main() {
    var fn = calculation('+');
    print("add : ${fn(5, 4)}");

    fn = calculation('-');
    print("sub : ${fn(5, 4)}");

    fn = calculation('*');
    print("mul : ${fn(5, 4)}");

    fn = calculation('/');
    print("div : ${fn(5, 4)}");

    fn = calculation('**');
    print("pow : ${fn(5, 4)}");

    fn = calculation('%');
    print("mod : ${fn(5, 4)}");

    //task 7
    showEvenAndOddNum(getNumber);


}

num add(num a, num b) => a + b;

num sub(num a, num b) => a - b;

num mul(num a, num b) => a * b;

num div(num a, num b) => b != 0 ? a / b : double.infinity;

num mod(num a, num b) => a % b;

num power(num a, num b) => pow(a, b);

Function calculation(String op) {
  switch (op) {
    case '+':
      return add;
    case '-':
      return sub;
    case '*':
      return mul;
    case '/':
      return div;
    case '%':
      return mod;
    case '**':
      return power;
    default:
      throw("error");
  }
}

int getNumber() {
  return 7;
}

void showEvenAndOddNum(int Function() getNum) {
  int number = getNum();

  if (number % 2 == 0) {
    print("$number is even");
  } else {
    print("$number is odd");
  }
}

