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
  1: begin a:=5.152; b:=163.438; x:=1.482 end; 
  2: begin a:=9.2; b:=87.4; x:=1.9; end; 
  3: begin a:=14.904; b:=48.944; x:=3.059; end; 
  end;
  
  if abs(b-a*5*x) <= 1e-10 then 
  begin y:=0.213*power(sech(1.82*x), 0.3) + sin(a/-0.69/b/x) + power(ctg(1.18*sqr(a)/b), 0.3);
  nf:=2 end // 2-ое условие
  else if b-a*5*x > 0 then
  begin y:=arsh(a/2.55/sqr(b)-x) * power(ch(-0.84*a/power(b, 3)-x), 0.8) * 0.68*sec(a/3.46/b+power(x, 4));
  nf:=1 end // 1-ое условие
  else
  begin y:=0.162*arch(a+2.46*b-power(x, 3)) - 0.225*power(log10(sqr(a)), 0.7) * 0.432*arth(x/3.64/sqr(a));
  nf:=3 end; // 3-е условие

inc (i);

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.