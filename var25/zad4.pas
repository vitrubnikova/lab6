program zad4;
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
  1: begin a:=0.884; b:=0.873; x:=0.268 end; 
  2: begin a:=0.85; b:=0.9; x:=0.4; end; 
  3: begin a:=0.629; b:=1.611; x:=0.776; end; 
  end;

  if abs(x+0.5*b-a) <= 1e-10 then 
  begin y:=power(arch(a+b+1.65*power(x, 3)), 0.8) + 0.036*arccos(a/-0.99/b*x) - power(a, 5.43*a-b-x);
  nf:=2 end // 2-ое условие
  else if x+0.5*b-a > 0 then
  begin y:=arcctg(2.32*a+b) - tg(a-4.65*power(b, 4)/x) + power(4.353, a+b/1.08/x);
  nf:=3 end // 3-ое условие
  else
  begin y:=sec(a-4.25*power(b, 4)) * 0.035*power(cth(1.34*a/b*sqr(x)), 1.1) - arsh(a/3.45/sqr(b)/x);
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.