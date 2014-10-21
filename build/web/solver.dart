import 'dart:html';

InputElement a,b,c,d,e,f;
ButtonElement solve;
double A,B,C,D,E,F;

void main() {
  a = querySelector("#a");
  b = querySelector("#b");
  c = querySelector("#c");
  d = querySelector("#d");
  e = querySelector("#e");
  f = querySelector("#f");
  solve = querySelector("#Solve")
      ..onClick.listen(solveIt);
}

void aChange(Event event){
  A = double.parse(a.value);
  B = double.parse(b.value);
  C = double.parse(c.value);
  D = double.parse(d.value);
  E = double.parse(e.value);
  F = double.parse(f.value);
}


void solveIt(Event event){
  aChange(null);
  double y = ((A*F)-(D*C))/((A*E)-(D*B));
  double x = (B*y-C)/(-A);
  ParagraphElement answer = querySelector("#answer");
  answer.text = "x = " + x.toString() + ", y = " + y.toString();
}
