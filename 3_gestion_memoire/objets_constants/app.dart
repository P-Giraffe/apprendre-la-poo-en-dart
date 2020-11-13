void main() {
  var p1 = const Point(1, 2);
  p1 = Point(2, 4);
  final p2 = const Point(10, 20);
  const p3 = Point(3, 4);
  const p4 = Point(3, 4);
}

class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}
