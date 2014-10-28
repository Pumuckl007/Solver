import 'dart:html';
import 'dart:math';

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
  A = double.parse(a.value);
  B = double.parse(b.value);
  C = double.parse(c.value);
  D = double.parse(d.value);
  E = double.parse(e.value);
  F = double.parse(f.value);
  G = double.parse(g.value);
  H = double.parse(h.value);
  I = double.parse(i.value);
  J = double.parse(j.value);
  K = double.parse(k.value);
  L = double.parse(l.value);
//  A = (1).toInt();
//  B = (2).toInt();
//  C = (1).toInt();
//  D = (10).toInt();
//  E = (2).toInt();
//  F = (-1).toInt();
//  G = (3).toInt();
//  H = (-5).toInt();
//  I = (2).toInt();
//  J = (-3).toInt();
//  K = (-5).toInt();
//  L = (27).toInt();
}


void solveIt(Event event){
  aChange();
  double z = ((A*F*I*H)-(E*B*I*H)-(I*F*A*H)+(I*F*E*D)-(E*J*E*D)-(A*F*E*L)+(E*B*E*L)+(E*J*A*H))/((E*J*A*G)-(E*J*E*C)
    -(A*F*E*K)+(E*B*E*K)+(A*F*I*G)-(E*B*I*G)-(I*F*A*G)+(I*F*E*C));
  double y = ((A*H)-(A*G*z)+(E*C*z)-(E*D))/((A*F)-(E*B));
  double x = (D-(B*y)-(C*z))/(A);
  String zS = (z).toString();
  String yS = (y).toString();
  String xS = (x).toString();
  ParagraphElement answer = querySelector("#answer");
  bool valid = (A*x+B*y+C*z==D) && (E*x+F*y+G*z==H) && (I*x+J*y+K*z==L);
  answer.text = "x = " + x.toString() + ", y = " + y.toString() + ", z = " + z.toString();
  if(!valid && answer.text.contains('NaN')){
    answer.text = "sorry i am not able to solve this. :(";
  }
}
