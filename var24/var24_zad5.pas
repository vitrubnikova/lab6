program zad5;
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
  1: begin a:=3.835; b:=6.44; x:=64.855 end; 
  2: begin a:=6.5; b:=9.2; x:=54.5; end; 
  3: begin a:=8.84; b:=14.168; x:=53.955; end; 
  end;

  if abs(9.8*a-b-x) <= 1e-10 then 
  begin y:=0.616*power(sec(4.71*a+b/power(x, 3)), 0.7) - 0.164*power(b, a/x) - exp(3.61*a/b/x);
  nf:=2 end // 2-ое условие
  else if 9.8*a-b-x > 0 then
  begin y:=ln(b/a) - cos(x) - ch(b/x);
  nf:=3 end // 3-ое условие
  else
  begin y:=0.108*arccos(a*sqr(b)/3.34/x) - 0.093*power(cth(b/x), 1.7) + 0.372*log10(sqr(x)/b);
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.