function tema_corciturilor
a=input('Valoarea din stanga a integralei este= ');
b=input('Valoarea din dreapta a integralei este= ');
i=input('Numarul de iteratii este= ');
%Rezolvarea temei "2" prin metoda trapezelor
h=(b-a)/i; %
x(1)=a;
f(1)=(x(1)^2)*log(x(1));
for k=2:(i+1)
    x(k)=x(1)+(k-1)*h;
    f(k)=(x(k)^2)*log(x(k));
end
%Rezolvarea temei "2" prin metoda Simpson 1/3
%i TREBUIE sa fie PAR
if i/2==fix(i/2)
s1=0;s2=0;
for l=1:2:(i+1)
    s1=s1+f(l);
end
for m=2:2:i
    s2=s2+f(m);
end
format longG
integry=(h/2)*(sum(f)*2-f(1)-f(i+1));
integry1=(h/3)*(2*s1+4*s2-f(1)-f(i+1));
disp('Rezultatul pentru Metoda Trapezelor este= ');
disp(integry);
disp('Rezultatul pentru metoda Simpson 1/3 este= ');
disp(integry1);
fun= @(x) x.^2.*log(x);
q= integral(fun, 3, 7);
disp('Rezultatul obtinut din functia "integral" este= ');
disp(q);
error=mae(integry, q);
disp('Eroarea absoluta pentru Metoda Trapezelor este= ');
disp(error);
error1=mae(integry1, q);
disp('Eroarea absoluta pentru Metoda Simpson 1/3 este= ');
disp(error1);
else
 disp(' Numarul de iteratii trebuie sa fie divizibil cu 2');
end