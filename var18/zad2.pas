program zad2;
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

for i:=1 to 3 do
  begin
  begin
  case i of
  1: begin a:=2.256; b:=3.95; x:=0.528 end; 
  2: begin a:=1.2; b:=5; x:=0.8; end; 
  3: begin a:=0.996; b:=8.05; x:=1.512; end; 
  end;

  if abs(x*0.3*b-a) <= 1e-10 then 
  begin y:=abs(a-power(b, 4)*1.2*x) - arctan(power(a, 3)+4.73*b+x) * 0.371*power(arcctg(-0.35*a-power(x, 3)), 0.4);
  nf:=2 end // 2-ое условие
  else if x*0.3*b-a > 0 then
  begin y:=arsh(a-2.61*x) + 0.288*power(a, x/b) + 0.16*cos(0.02*a+x);
  nf:=3 end // 3-ое условие
  else
  begin y:=arch(3.3*a/sqr(x)) + power(logN(7, 2.44*a+power(b, 4)-x), 0.9) + 0.4*arccos(1.82*a-b-power(x, 4));
  nf:=1 end // 1-е условие
end;

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.