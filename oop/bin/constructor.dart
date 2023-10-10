void main(List<String> args) {
  Circle radius = Circle(10);
  print("Border radius: ${radius}");
}

class Circle {
  int radius;
  Circle(
    this.radius,
  );
}
