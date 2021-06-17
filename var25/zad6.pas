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
inc (i);

writeln('Программирование разветвляющихся и циклических вычислительных процессов');
writeln('Выполнил: студент гр. 1-100205 Ягубов М.С.');
writeln('Вариант 25');

  while i<=3 do
  
  begin
  case i of
  1: begin a:=5.676; b:=4.488; x:=45.26 end; 
  2: begin a:=8.6; b:=6.6; x:=31; end; 
  3: begin a:=16.254; b:=8.514; x:=18.29; end; 
  end;
  
  if abs(x-6*b+a) <= 1e-10 then 
  begin y:=0.174*power(log10(a-5.16*b/x), 1.2) + 0.56*power(b, a/b/5.71/x) + ctg(x/0.38/a);
  nf:=2 end // 2-ое условие
  else if x-6*b+a > 0 then
  begin y:=arth(a*0.16*sqr(b)/x) - power(x, a/-0.52/x) - sec(a+x);
  nf:=1 end // 1-ое условие
  else
  begin y:=power(13.108, b/3.13/a) - 0.058*power(arch(7.38*a+power(b, 4)), 2.2) - arctan(x+0.04*power(b, 4));
  nf:=3 end; // 3-е условие

inc (i);

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.