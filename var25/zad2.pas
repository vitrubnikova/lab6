program zad1;
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

for i:=1 to 3 do
  begin
  begin
  case i of
  1: begin a:=311.168; b:=0.342; x:=6.786 end; 
  2: begin a:=228.8; b:=0.3; x:=7.8; end; 
  3: begin a:=139.568; b:=0.183; x:=13.572; end; 
  end;

  if abs(a-8.8*x/b) <= 1e-10 then 
  begin y:=sqr(ln(a+1.19*x)) - 0.14*arctan(a*b*-1.52*x) + power(arcctg(a*1.84*b*x), 0.7);
  nf:=2 end // 2-ое условие
  else if a-8.8*x/b > 0 then
  begin y:=cth(4.66*a/power(x, 4)) + power(tg(b+x), 0.1) + abs(sqr(b)-0.21*x);
  nf:=1 end // 1-ое условие
  else
  begin y:=0.222*cosech(a*2.56*b/power(x, 3)) - 0.07*power(cos(x), 0.7) - power(a, 6.39*b/x);
  nf:=3 end // 3-е условие
end;

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.