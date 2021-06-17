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
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

  while i<=3 do
  
  begin
  case i of
  1: begin a:=1.802; b:=160.792; x:=7.224 end; 
  2: begin a:=3.4; b:=80.8; x:=8.6; end; 
  3: begin a:=6.392; b:=77.568; x:=9.03; end; 
  end;
  
  if abs(b-9*x-a) <= 1e-10 then 
  begin y:=0.252*power(arccos(a/x), 0.3) - ctg(b-sqr(a)) * 0.435*power(sec(0.38*x-a), 0.5);
  nf:=2 end // 2-ое условие
  else if b-9*x-a > 0 then
  begin y:=arcctg(a/-1.34/power(b, 4)*x) - power(logN(7, a*b-3.34*sqr(x)), 1.8) - th(a);
  nf:=1 end // 1-ое условие
  else
  begin y:=sech(x-a) - power(ln(6.44*sqr(a)*b/x), 1.8) * 0.11*sin(x);
  nf:=3 end; // 3-е условие

inc (i);

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.