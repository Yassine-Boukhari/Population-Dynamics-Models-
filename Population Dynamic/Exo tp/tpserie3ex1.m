clear all; clc
%% Dessin
f=@(x)(x*sin(x));
feval(f,-5)
%fplot(f);
%% Représentation de la suite
u0=1;
u=u0;
for k=1:10
u(k+1)=3*u(k)+2;
end
% figure(1)
% plot(u,'.');
%% Le modèle Verluhst (continue)
%pour r=2,r=3,r=3.5,r=4
x0=2;
g=@(t)(x0/(x0+(1-x0)*exp(-2*t)));
% fplot(f,[1,50])
%% Exo 2
%1)
%au 5ème Jour on aura
p0=2;
r=0.7944;
p=@(t)[p0*exp(r*t)];
a=feval(p,5);
%2)
%Déterminons r puis calucler de la m^me manière.
%r=ln(p(100)/100)/100
%p(150)=...
%3)
%Taux de croissance sans p0 (où r connu)
%p(t1+7)=p(t1)*exp(7*r).
%4)
%p(t+t')=2p(t)
%p0*exp(r(t+t')=2*p0*exp(rt)
%t'=log(2)/r
%5)
%p(8)=p0exp(
%% Exo 4
%1) Alpha=K, Beta=K' et delta=-r






 

