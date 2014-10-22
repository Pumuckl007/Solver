import 'dart:html';

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
}


void solveIt(Event event){
  aChange();
  if((F*I*B*E*C*A)-(F*I*B*G*A*A)+(I*C*F*F*A*A)-
      (F*I*E*B*C*A)+(C*F*F*A*A*A)-(F*E*B*C*A*A)+(I*C*B*B*E*E)+(E*B*I*F*C*A)-(E*I*G*B*B*A)-(I*C*E*E*B*B)-(F*K*A)+
      (K*E*B)-(C*E*E*B*B*A*A) == 0){
    ParagraphElement answer = querySelector("#answer");
    answer.text = "I can not solve becuase I would have to divide by Zero";
  } else {
    double z = ((F*I*B*E*D*A)-(F*I*B*H*A*A)+(I*D*F*F*A*A)-(F*I*E*B*D*A)-(I*D*B*B*E*E)-(E*I*H*B*B*A)+(E*B*I*F*D*A)-
        (I*D*E*E*B*B)+(E*B*F*D*A*A*A)+(D*E*E*B*B*A*A)-(F*L*A)+(E*B*L))/((F*I*B*E*C*A)-(F*I*B*G*A*A)+(I*C*F*F*A*A)-
        (F*I*E*B*C*A)+(C*F*F*A*A*A)-(F*E*B*C*A*A)+(I*C*B*B*E*E)+(E*B*I*F*C*A)-(E*I*G*B*B*A)-(I*C*E*E*B*B)-(F*K*A)+
        (K*E*B)-(C*E*E*B*B*A*A));
    double y = ((E*C*z)-(E*D)-(A*G*z)+(A*H))/((F*A)-(E*B));
    double x = ((B*y)+(C*z)-D)/(-A);
    ParagraphElement answer = querySelector("#answer");
    answer.text = "x = " + x.toString() + ", y = " + y.toString() + ", z = " + z.toString();
  }
  if((F*A)-(E*B) == 0){
    ParagraphElement answer = querySelector("#answer");
    answer.text = "I can not solve becuase I would have to divide by Zero";
  }
  if(A == 0){
      ParagraphElement answer = querySelector("#answer");
      answer.text = "I can not solve becuase I would have to divide by Zero";
  }
}
