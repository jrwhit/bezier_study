import 'package:flutter/material.dart';

class BezierWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: ClipPath(
            clipper: ClipCurvaEmCima(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.7,
              decoration: BoxDecoration(
                gradient:
                LinearGradient(colors: [Color(0xFFf9a45f), Color(0xFFf86a5c)]),
              ),
            ),
          )
        ),
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: ClipPath(
              clipper: ClipHome2(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  gradient:
                  LinearGradient(colors: [Color(0xFFf9a45f), Color(0xFFf86a5c)]),
                ),
              ),
            )
        ),
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: ClipPath(
              clipper: ClipHome(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  gradient:
                  LinearGradient(colors: [Color(0xFFf9a45f), Color(0xFFf86a5c)]),
                ),
              ),
            )
        ),
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: ClipPath(
              clipper: ClipCurvaBaixoLateral(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  gradient:
                  LinearGradient(colors: [Color(0xFFf9a45f), Color(0xFFf86a5c)]),
                ),
              ),
            )
        ),
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: ClipPath(
              clipper: ClipCurvaBaixo(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  gradient:
                  LinearGradient(colors: [Color(0xFFf9a45f), Color(0xFFf86a5c)]),
                ),
              ),
            )
        ),
      ],
    );
  }
}
class ClipCurvaBaixoLateral extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.lineTo(0, size.height);
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height - 10);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 10.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), size.height - 15);
    var secondEndPoint = Offset(size.width, size.height - 10);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);

    path.lineTo(0.0, size.height);

    //path.lineTo(0.0, size.height - 20);

    //path.lineTo(size.width, size.height - 40);
    //path.lineTo(size.width, 0.0);
    //path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
class ClipCurvaBaixo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.lineTo(0, size.height);
    path.lineTo(0.0, size.height);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);

    path.lineTo(0.0, size.height);

    //path.lineTo(0.0, size.height - 20);

    //path.lineTo(size.width, size.height - 40);
    //path.lineTo(size.width, 0.0);
    //path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
class ClipCurvaEmCima extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.lineTo(0, size.height);
    path.lineTo(0.0, 20);
    var firstControlPoint = Offset(size.width / 4, 0.0);
    var firstEndPoint = Offset(size.width / 2.25, 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), 65);
    var secondEndPoint = Offset(size.width, 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);

    path.lineTo(0.0, size.height);

    //path.lineTo(0.0, size.height - 20);

    //path.lineTo(size.width, size.height - 40);
    //path.lineTo(size.width, 0.0);
    //path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
//arte moderna
class ClipHome2 extends CustomClipper<Path> {
  final int _coefficient = 16;
  double get _minStep => 1 / _coefficient;
  double get _preCenter => _minStep * (_coefficient / 2 - 1);
  double get _postCenter => _minStep * (_coefficient / 2 + 1);
  double get _preEnd => _minStep * (_coefficient - 2);

  @override
  Path getClip(Size size) {
    Path path = Path();
    //path.lineTo(0, size.height);
    path.lineTo(0.0, 20);
    var firstControlPoint = Offset(size.width / 4, 0.0);
    var firstEndPoint = Offset(size.width / 2.25, 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), 65);
    var secondEndPoint = Offset(size.width, 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 20);

    path.quadraticBezierTo(size.width / 4, size.height / 2, size.width / 2, size.height / 2);
    path.quadraticBezierTo(size.width, size.height / 2, size.width, 0);

    path.lineTo(0.0, size.height);

    //path.lineTo(0.0, size.height - 20);

    //path.lineTo(size.width, size.height - 40);
    //path.lineTo(size.width, 0.0);
    //path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
//curva na lateral triangulo
class ClipHome extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var lol = ((size.width / 2) / 2);
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 4, size.height / 2, size.width / 2, size.height / 2);
    path.quadraticBezierTo(size.width, size.height / 2, size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
