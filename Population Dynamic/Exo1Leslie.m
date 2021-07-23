clear;
clc;
%% Question 1
j(1)=30;
p(1)=50;
a(1)=50;
for i=1:32
j(i+1)=6*p(i)+10*a(i);
p(i+1)=1/2*j(i);
a(i+1)=2/5*p(i);
end
%% Question 2
for i=1:32
e(i)=j(i+1)/j(i);
b(i)=p(i+1)/p(i);
d(i)=a(i+1)/a(i);
end
%% 
