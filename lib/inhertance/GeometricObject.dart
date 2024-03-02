import 'dart:math';

abstract class Geometric {
  String color;
  bool filled;
  Geometric({this.color = "white", this.filled = false});
  Geometric.init({required this.color,required this.filled});
  getArea();
  getPerimeter();
}
class Triangle extends Geometric {
  double side1;
  double side2;
  double side3;
  Triangle({this.side1 =1 ,this.side2=1, this.side3=1});
  Triangle.init({required this.side1,required this.side2,required this.side3});
  @override
  getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }
  @override
  getPerimeter() {
    return side1 + side2+ side3;
  }
}
class Rectangle extends Geometric {
  double height;
  double width;

  Rectangle({this.height = 1, this.width = 1});

  Rectangle.init(
      {required String color, required bool filled, required this.width, required this.height})
      :
        super.init(color: color, filled: filled);

  @override
  getArea() {
    return height * width;
  }

  @override
  getPerimeter() {
    return height + width;
  }
}
  void main(){
    Geometric geo = Triangle();
    print(geo.getArea());
    print (geo.getPerimeter());
    Geometric geo1 = Rectangle.init(color: 'white', filled:true, width: 100, height: 50);
    print(geo1.getArea());
    print(geo1.getPerimeter());
  }
