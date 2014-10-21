import 'dart:html';

InputElement a,b,c,d,e,f;
ButtonElement solve;
double A,B,C,D,E,F;

void main() {
  a = querySelector("#a")
    ..onChange.listen(aChange);
  b = querySelector("#b")
      ..onChange.listen(aChange);
  c = querySelector("#c")
      ..onChange.listen(aChange);
  d = querySelector("#d")
      ..onChange.listen(aChange);
  e = querySelector("#e")
      ..onChange.listen(aChange);
  f = querySelector("#f")
      ..onChange.listen(aChange);
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
  double y = ((A*F)-(D*C))/((A*E)-(D*B));
  double x = (B*y-C)/(-A);
  ParagraphElement answer = querySelector("#answer");
  answer.text = "x = " + x.toString() + ", y = " + y.toString();
}
