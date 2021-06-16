program zad6;
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
writeln('Выполнил: студент гр. 1-100205 Юрчишин А.С.');
writeln('Вариант 24');

  repeat
  inc (i);
  case i of
  1: begin a:=14.478; b:=2.87; x:=5.16 end; 
  2: begin a:=12.7; b:=4.1; x:=8.6; end; 
  3: begin a:=6.477; b:=6.929; x:=15.652; end; 
  end;

  if abs(b+x-a) <= 1e-10 then 
  begin y:=power(13.415, -2.29*b/a) * 0.12*sin(a-b) + power(sec(7.71*a-b), 0.6);
  nf:=2 end // 2-ое условие
  else if b+x-a > 0 then
  begin y:=arsh(power(x, 4)/-1.03/b) + power(arcsin(x/4.22/power(a, 3)), 2.7) - sech(x/a);
  nf:=3 end // 3-ое условие
  else
  begin y:=cosech(b) - power(arcth(power(a, 3)+2.69*x), 1.9) * cos(x);
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.