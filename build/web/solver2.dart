import 'dart:html';
import 'package:vector_math/vector_math.dart';
import 'src/matrix.dart';


InputElement a,b,c,d,e,f,g,h,i,j,k,l;
ButtonElement solve;
double A,B,C,D,E,F,G,H,I,J,K,L;

void main() {
  a = querySelector("#a");
  b = querySelector("#b");
  c = querySelector("#c");
  d = querySelector("#d");
  e = querySelector("#e");
  f = querySelector("#f");
  g = querySelector("#g");
  h = querySelector("#h");
  i = querySelector("#i");
  j = querySelector("#j");
  k = querySelector("#k");
  l = querySelector("#l");
  solve = querySelector("#Solve")
      ..onClick.listen(solveIt);
}

void aChange(){
//  A = double.parse(a.value);
//  B = double.parse(b.value);
//  C = double.parse(c.value);
//  D = double.parse(d.value);
//  E = double.parse(e.value);
//  F = double.parse(f.value);
//  G = double.parse(g.value);
//  H = double.parse(h.value);
//  I = double.parse(i.value);
//  J = double.parse(j.value);
//  K = double.parse(k.value);
//  L = double.parse(l.value);
}


void solveIt(Event event){
  aChange();
  double x,y,z;
//  Matrix3 coeficents = new Matrix3(A,B,C,E,F,G,I,J,K);
  Matrix coeficents = new Matrix([1.0,2.0,1.0,7.0,5.0,8.0,3.0,5.0,7.0], 3, 3);
  Matrix equals = new Matrix([2.0,2.0,2.0],1,3);
//  coeficents.invert();
  print(coeficents.toString() + " s");
  print(equals.toString());
  Matrix xyz = coeficents.multiply(equals);
  print(xyz.toString());
  ParagraphElement answer = querySelector("#answer");
  answer.text = "x = " + xyz.matrix[0][2].toString() + ", y = " + xyz.matrix[1][2].toString() +
      ", z = " + xyz.matrix[2][2].toString();
  
}
