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
        Padding(
            padding: EdgeInsets.only(top: 8),
            child: ClipPath(
              clipper: CorteLateralDireita(),
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
              clipper: CorteLateralEsquerda(),
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
              clipper: CurvaEmTudo(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.7,
                decoration: BoxDecoration(
                  gradient:
                  LinearGradient(colors: [Color(0xFFf9a45f), Color(0xFFf86a5c)]),
                ),
              ),
            )
        )
      ],
    );
  }
}
class ClipCurvaBaixoLateral extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height - 40);

    var firstControlPoint = Offset(size.width / 1.55, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width / 4, size.height - 65);
    var secondEndPoint = Offset(0.0, size.height - 20);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);


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

    path.lineTo(0.0, 0.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height - 40);

    var firstControlPoint = Offset(size.width, size.height - 65);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 20);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width / 4, size.height);
    var secondEndPoint = Offset(0.0, size.height - 30);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

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

class CorteLateralDireita extends CustomClipper<Path>{

  @override
  Path getClip(Size size){
      Path path = Path();

      path.lineTo(0.0, 0.0);
      path.lineTo(size.width, 0.0);

      var firtControlPoint = Offset(size.width * 0.75, size.height * 0.25);
      var firstEndPoint = Offset(size.width - 40, size.height * 0.55);
      path.quadraticBezierTo(firtControlPoint.dx, firtControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

      var secondControlPoint = Offset(size.width, size.height * 0.85);
      var secondEndPoint = Offset(size.width - 20, size.height);
      path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

      path.lineTo(0.0, size.height);

      path.close();
      return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

class CorteLateralEsquerda extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();

    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);

    var firstPointControl = Offset(70, size.height * .75);
    var firstEndPoint = Offset(40, size.height * 0.55);
    path.quadraticBezierTo(firstPointControl.dx, firstPointControl.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(0.0, size.height * 0.25);
    var secondEndPoint = Offset(10.0, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper != this;
  }
  
}

class CurvaEmTudo extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();

    //cima
    var firstCimaControlPoint = Offset(size.width / 4, 0.0);
    var firstEndCimaPoint = Offset(size.width / 2.25, 30.0);
    path.quadraticBezierTo(firstCimaControlPoint.dx, firstCimaControlPoint.dy,
        firstEndCimaPoint.dx, firstEndCimaPoint.dy);

    var secondControlCimaPoint =
    Offset(size.width - (size.width / 3.25), 65);
    var secondEndCimaPoint = Offset(size.width, 40);
    path.quadraticBezierTo(secondControlCimaPoint.dx, secondControlCimaPoint.dy,
        secondEndCimaPoint.dx, secondEndCimaPoint.dy);


    //direita
    var firtsControlDireitaPoint = Offset(size.width * 0.75, size.height * 0.25);
    var firstEndDireitaPoint = Offset(size.width - 40, size.height * 0.55);
    path.quadraticBezierTo(firtsControlDireitaPoint.dx, firtsControlDireitaPoint.dy, firstEndDireitaPoint.dx, firstEndDireitaPoint.dy);

    var secondControlDireitaPoint = Offset(size.width, size.height * 0.85);
    var secondEndDireitaPoint = Offset(size.width - 20, size.height);
    path.quadraticBezierTo(secondControlDireitaPoint.dx, secondControlDireitaPoint.dy, secondEndDireitaPoint.dx, secondEndDireitaPoint.dy);


    //baixo
    var firstControlBaixoPoint = Offset(size.width, size.height - 65);
    var firstEndBaixoPoint = Offset(size.width / 2.25, size.height - 20);

    path.quadraticBezierTo(firstControlBaixoPoint.dx, firstControlBaixoPoint.dy,
        firstEndBaixoPoint.dx, firstEndBaixoPoint.dy);

    var secondControlBaixoPoint =
    Offset(size.width / 4, size.height);
    var secondEndBaixoPoint = Offset(0.0, size.height - 30);

    path.quadraticBezierTo(secondControlBaixoPoint.dx, secondControlBaixoPoint.dy,
        secondEndBaixoPoint.dx, secondEndBaixoPoint.dy);



    //esquerda
    var firstPointEsquerdaControl = Offset(70, size.height * .75);
    var firstEndEsquerdaPoint = Offset(40, size.height * 0.55);
    path.quadraticBezierTo(firstPointEsquerdaControl.dx, firstPointEsquerdaControl.dy, firstEndEsquerdaPoint.dx, firstEndEsquerdaPoint.dy);

    var secondControlEsquerdaPoint = Offset(0.0, size.height * 0.25);
    var secondEndEsquerdaPoint = Offset(10.0, 0.0);
    path.quadraticBezierTo(secondControlEsquerdaPoint.dx, secondControlEsquerdaPoint.dy, secondEndEsquerdaPoint.dx, secondEndEsquerdaPoint.dy);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper != this;
  }

}