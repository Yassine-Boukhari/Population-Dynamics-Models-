
function cobweb(f,a,b,x0,N) 
% generate the cobweb plot associated with
% the orbits x_n+1=f(x_n).
% N is the number of iterates, 
% x0 is the initial points.
% use @f to pass function ...



% turn hold on to gather up all plots in one
x=linspace(a,b,N);

y=f(x);
hold on
plot(x,y,'k'); % plot the function
plot(x,x,'r'); % plot the straight line
xlabel('x(t)')
ylabel('y(t)')
x(1)=x0; % plot orbit starting at x0 
line([x(1),x(1)],[0,f(x(1))]);
line([x(1),f(x(1))],[f(x(1)),f(x(1))]);
for i=2:N
    x(i+1)=f(x(i)); 
    line([x(i+1),x(i+1)],[x(i+1),f(x(i+1))]);
    line([x(i+1),f(x(i+1))],[f(x(i+1)),f(x(i+1))]);
end

hold off;
