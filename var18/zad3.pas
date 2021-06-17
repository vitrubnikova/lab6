program zad3;
var	a, b, x, y: real;
i, nf: integer;

function sec(x:real):real; begin sec:=1/cos(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arsh(x:real):real; begin arsh:=ln(x+sqrt(x*x+1)) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
writeln('Программирование разветвляющихся и циклических вычислительных процессов');
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

  repeat
  inc (i);
  case i of
  1: begin a:=0.31; b:=0.48; x:=4.525 end; 
  2: begin a:=0.5; b:=0.5; x:=2.5; end; 
  3: begin a:=0.955; b:=0.57; x:=2.475; end; 
  end;

  if abs(4*a+b-x) <= 1e-10 then 
  begin y:=power(ln(sqr(a)+3.66*x), 0.7) + sec(3.38*power(x, 3)-b) * abs(a*power(b, 3)-0.12*x);
  nf:=2 end // 2-ое условие
  else if 4*a+b-x > 0 then
  begin y:=arctan(power(a, 4)-6.73*b/x) * power(arsh(3.02*power(a, 3)/b-x), 2.4) * 0.291*power(a, a+2.34*b+x);
  nf:=3 end // 3-ое условие
  else
  begin y:=0.112*sech(a*4.13*b*x) * power(arcctg(power(a, 4)), 1.6) + arth(5.44*power(a, 4)/x);
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.