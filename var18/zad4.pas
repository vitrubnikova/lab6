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
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

  repeat
  inc (i);
  case i of
  1: begin a:=90.44; b:=3.996; x:=5.451 end; 
  2: begin a:=66.5; b:=5.4; x:=7.9; end; 
  3: begin a:=64.505; b:=5.616; x:=13.983; end; 
  end;

  if abs(0.2*a-b-x) <= 1e-10 then 
  begin y:=power(arcctg(5.31*x-power(b, 4)), 0.2) + 0.145*ch(a/power(b, 3)-0.58*x) + 0.255*power(sec(x/b), 2.7);
  nf:=2 end // 2-ое условие
  else if 0.2*a-b-x > 0 then
  begin y:=arch(a+b-0.45*sqr(x)) + 0.16*abs(1.24*a-b*power(x, 3)) * 0.445*power(x, x/2.14/b);
  nf:=1 end // 1-ое условие
  else
  begin y:=arccos(a/-3.85/power(x, 3)) + power(b, 3.25*b/x) + arth(x/power(a, 3));
  nf:=3 end; // 3-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.