%% Primo test metodo delle successive bisezioni
f =@ cos;
a = 1;
b = 2;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t    Valore x \tStima errore</strong>\n")
Bisection(f,a,b,tol,maxIter);

%% Secondo test metodo delle successive bisezioni
f =@(x) x^3 - x - 2;
a = 1;
b = 2;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t    Valore x \tStima errore</strong>\n")
Bisection(f,a,b,tol,maxIter);

%% Terzo test metodo delle successive bisezioni
f =@(x) exp(x) - 1;
a = -1;
b = 1;
tol = 1e-10;
maxIter = 100;
fprintf("<strong>Passo\t    Valore x \tStima errore</strong>\n")
Bisection(f,a,b,tol,maxIter);
