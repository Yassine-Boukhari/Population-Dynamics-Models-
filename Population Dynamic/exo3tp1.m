clear
clc
x0=1/2;
x=[x0];
a1=1/2;
a2=1;
a3=1.5;
a4=3;
a5=3.3;
a6=3.5;
% a=[1/2 1 1.5 3 3.3 3.5 3.57 4];
%for i=1:8
f=@(x)[(x*(1-x))];
fplot(@(x)f(x,a1),[0,1])
% for k=1:15
% x(k+1)=a2*x(k)*(1-x(k));
% end
% plot(x,'k.')

%end