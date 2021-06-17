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
writeln('Выполнил: студент гр. 1-100205 Ягубов М.С.');
writeln('Вариант 25');

  repeat
  inc (i);
  case i of
  1: begin a:=3.626; b:=2.652; x:=256.074 end; 
  2: begin a:=4.9; b:=5.2; x:=191.1; end; 
  3: begin a:=5.047; b:=5.668; x:=129.948; end; 
  end;

  if abs(b*7.5*a-x) <= 1e-10 then 
  begin y:=power(sec(a*power(b, 4)/-3.61/x), 0.8) + tg(3.34*a) + power(log10(a+x), 0.6);
  nf:=2 end // 2-ое условие
  else if b*7.5*a-x > 0 then
  begin y:=0.279*abs(-0.13*x/b) - power(sh(a/5.43/b), 2.7) * arcctg(a-b/1.57/x);
  nf:=3 end // 3-ое условие
  else
  begin y:=arth(-1.37*a/b/sqr(x)) - 0.112*power(cosech(a-b), 0.1) + th(0.93*a-b/power(x, 4));
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.