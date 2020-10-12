function tema_trapezelor
%Rezolvarea temei "2" prin metoda trapezelor
a=input('Valoarea din stanga a integralei este= ');
b=input('Valoarea din dreapta a integralei este= ');
i=input('Numarul de iteratii este= ');
h=(b-a)/i;
x(1)=a;
f(1)=(x(1)^2)*log(x(1));
for k=2:(i+1)
    x(k)=x(1)+(k-1)*h;
    f(k)=(x(k)^2)*log(x(k));
end
format longG
integry=(h/2)*(sum(f)*2-f(1)-f(i+1));
fun= @(x) x.^2.*log(x);
q= integral(fun, 3, 7);
disp('Rezultatul pentru Metoda Trapezelor este= ');
disp(integry);
disp('Rezultatul obtinut din functia "integral" este= ');
disp(q);
error=mae(integry, q);
disp('Eroarea absoluta pentru Metoda Trapezelor este= ');
disp(error);
