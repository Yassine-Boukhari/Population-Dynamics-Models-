%%
K=10;
r=1.2;
x0=0.01;
f=@(t,x)(r*x*(1-x/K));
[t,x]=ode45(f,[0,10],x0);
plot(t,x,'linewidth',5)
xlabel('temps');legend('population')
title('l''évolution logistique')
%%
T=10;
r=1.2;
K=10;
x0=0.01;
t=linspace(0,T);
 e=exp(r*t);
 x=x0*K*e./(K+x0*(e-1));
% x=@(t)x0*K*exp(r*t)./(K+x0*(exp(r*t)-1));
plot(t,x); grid
% fplot(x,[1 10]);grid;
xlabel('temps');legend('population')
title('l''évolution logistique')
