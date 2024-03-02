import 'dart:io';
abstract class Shape {
  String color;
  Shape({required this.color});
  double calculateArea();
  void draw();
}
class Rectangle extends Shape {
  double length;
  double width;
  Rectangle({required this.length,required this.width,required String color}) :
        super(color: color);
  @override
  double calculateArea() {
    return length * width;
  }
  @override
  void draw() {
    for (int i = 0; i < length; i++) {
      for (int j = 0; j < width; j++) {
        stdout.write('*');
      }
      print('');
    }
  }
}
class Triangle extends Shape {
  double height;
  double base;
  Triangle({required this.height,required this.base,required String color}) :
        super(color: color);
  @override
  double calculateArea() {
    return 0.5 * height * base;
  }
  @override
  void draw () {
    for (int i = 0; i < height; i++) {
      for (int j = 0; j <= i; j++) {
        stdout.write('*');
      }
      print('');
    }
  }
}
void main() {
  Rectangle rectangle = Rectangle(length: 10, width:10 , color:'white');
  Triangle triangle = Triangle(height: 5, base: 5, color: 'red');
  print("Area of the rectangle: ${rectangle.calculateArea()}");
  print("Area of the triangle: ${triangle.calculateArea()}");
  rectangle.draw();
  triangle.draw();
}