clear; clc;
%% Dessin
%1)
f=@(x)(x*sin(x));
% fplot(f,[-100,100]);
% xlabel('x');
% ylabel('xsin(x)');
% grid on
% title('Représentation de la fonction xsin(x)');
%% 2)
u0=1;
u=u0;
for k=1:100
u(k+1)=3*u(k)+2;
end
N=100;
for i=1:100
X=u(i)*rand(1,N);
% Y=u(i)*rand(1,N);
% plot(X,'.k')
% grid on
% title('Nuage de points de la suite U_n')
end
%% 3)
r=input('Entrer la valeur de r:\n r=');
x0=0.2;
n=50;
x=zeros(n+1,1);%déclarer la variable x qui aura n+1 variables
t=zeros(n+1,1);
x(1)=x0;
for i=1:n
    t(i)=i-1;
    x(i+1)=r*x(i)*(1-x(i));
end
t(n+1)=n;
plot(t,x,t,x,'o')
xlabel ('temps')
ylabel ('population')
grid on
