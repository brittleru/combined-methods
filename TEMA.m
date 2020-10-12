function TEMA
a=input('Valoarea capatului din stanga integralei: ');
b=input('Valoarea capatului din dreapta integralei: ');
i=input('Numarul de iteratii: ');
h=(b-a)/i;                  
x(1)=a;                     
f(1)=(x(1)^2)*log(x(1));    
for k=2:(i+1)              
    x(k)=x(1)+(k-1)*h;      
    f(k)=(x(k)^2)*log(x(k));
end
if i/2==fix(i/2) 
s1=0;s2=0;       
for n=1:2:(i+1)  
    s1=s1+f(n);  
end
for m=2:2:i      
    s2=s2+f(m); 
end
integrala1=(h/2)*(sum(f)*2-f(1)-f(i+1));
integrala2=(h/3)*(2*s1+4*s2-f(1)-f(i+1)); 
disp('Rezultatul pentru Metoda Trapezelor: ');
disp(integrala1);  
disp('Rezultatul pentru Simpson 1/3: ');
disp(integrala2); 
integrala3= @(x) x.^2.*log(x); 
q= integral(integrala3, 3, 7); 
disp('functia integral: ');
disp(q);        
e=mae(integrala1, q);
disp('eroarea absoluta pentru Metoda Trapezelor: ');
disp(e);    
e1=mae(integrala2, q);
disp('eroarea absoluta pentru Simpson 1/3: ');
disp(e1); 
else
 disp(' numarul trebuie sa fie par');
end