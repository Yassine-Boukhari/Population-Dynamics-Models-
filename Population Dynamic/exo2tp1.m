clear;
clc;
%% 1ère Méthode
%% cas a=1, b>0
b=10;
x0=1;
x=[x0];
% hold on
% for k=1:15
% x(k+1)=x(k)+b;
% end
% plot (x,'*')
% 
% %% Cas a<1,b>0
% for k=1:15
% x(k+1)=(1/2)*x(k)+b;
% end
% 
% plot(x,'b.')
%% Cas a=-1,b>0
b1=1;b2=2;b3=20;b4=25;
hold on
for k=1:15
x(k+1)=(-1)*x(k)+b1;
end
plot(x,'b--')
for k=1:15
x(k+1)=(-1)*x(k)+b2;
end
plot(x,'g-')
hold on
for k=1:15
x(k+1)=(-1)*x(k)+b3;
end
plot(x,'r--')

for k=1:15
x(k+1)=(-1)*x(k)+b4;
end
plot(x,'k--')
hold on
grid on
legend ({'b=1','b=2','b=20','b=25'})

%% 2ème Méthode
% x=1;
% hold on
% for k=1:15
% x=x+b;
% plot (k,x,'k.')
% end