clc; clear;

k12 = 1/33; k13 = 1/5; k21 = 1/40; k31 = 1/6; k34 = 1/62; k43 = 1/300;

A = [-k12-k13 k21 k31 0; 
    k12 -k21 k31 0; 
    k13 0 -k31-k34 k43;
    0 0 k34 -k43];

Dt = 10;
t0 = 1890; tf = 1990;
R = 0.0001;
M = [0, 0, 1, 0];
X0=[51 62.2 61.5 2985.4]';
X=X0;
S1=[];S2=[];
for i=1:10
B=[0.06*i 0 0 0]';
Y= M*X + sqrtm(R)*randn(1,1);
S2=[S2,Y];
X=expm(A*Dt)*X+B*Dt; %mettre B en vecteur ligne foire tout,rend Y matrice
S1=[S1,X];
end
 plot(i,S1(3,:),'k-',S2,'b--')