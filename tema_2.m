 function tema_2
a=input('Valoarea din stanga a integralei este= ');
b=input('Valoarea din dreapta a integralei este= ');
i=input('Numarul de iteratii este= ');
%Rezolvarea temei "2" prin metoda trapezelor (A.K.A. TEMA TRAPEZELOR)
h=(b-a)/i;                  % Calcularea ariei pentru un pas
x(1)=a;                     % Intializarea multimii
f(1)=(x(1)^2)*log(x(1));    % Valoarea functiei in primul punct pe care o
                            % retinem in f(1)
for k=2:(i+1)               % Iterator
    x(k)=x(1)+(k-1)*h;      % Actualizarea multimii de "icshi"(x)
    f(k)=(x(k)^2)*log(x(k));% Calcularea valorii functieii pentru fiecare x
end
%Rezolvarea temei "2" prin metoda Simpson 1/3
%i TREBUIE sa fie PAR!!1
if i/2==fix(i/2) % Verificarea daca numarul de iteratii este par
s1=0;s2=0;       % Initializarea sumelor 1 si 2 necesare pentru Relatia
                 % Simpsons 1/3
for n=1:2:(i+1)  
    s1=s1+f(n);  % Suma functiilor de pe pozitii impare (1, 3, 5...)
end
for m=2:2:i      
    s2=s2+f(m);  % Suma functiilor de pe pozitii pare (2, 4, 6...)
end
format longG % Afisarea rezultatelor cu mai multe zecimale

integry=(h/2)*(sum(f)*2-f(1)-f(i+1));   %Formula metodei Trapezelor

integry1=(h/3)*(2*s1+4*s2-f(1)-f(i+1)); %Relatia Simpson 1/3

disp('Rezultatul pentru Metoda Trapezelor este= ');
disp(integry);  % Afisarea rezultatului obtinut prin Metoda Trapezelor

disp('Rezultatul pentru metoda Simpson 1/3 este= ');
disp(integry1); % Afisarea rezultatului obtinut prin Metoda Simpson 1/3

fun= @(x) x.^2.*log(x); %Functia care trebuie integrata
q= integral(fun, 3, 7); %Integrarea functei "fun" cu capetele 3 si 7

disp('Rezultatul obtinut din functia "integral" este= ');
disp(q);        % Afisarea rezultatului obtinut din functia "integral"

error=mae(integry, q);%Calcularea erorii absolute pentru Metoda Trapezelor

disp('Eroarea absoluta pentru Metoda Trapezelor este= ');
disp(error);    % Afisarea erorii absolute pentru Metoda Trapezelor 

error1=mae(integry1, q);%Calcularea erorii absolute pentru Simpsons 1/3

disp('Eroarea absoluta pentru Metoda Simpson 1/3 este= ');
disp(error1);   % Afisarea erorii absolute pentru Metoda Simpsons 1/3

else
 disp(' Numarul de iteratii trebuie sa fie divizibil cu 2');
end