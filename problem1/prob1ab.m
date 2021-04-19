clear;
d   = 0.01;    

for i = 1:2000                          % for loop with 2000 steps
    x = 0;                              % initial x at origin
    y = 0;                              % initial y at origin
    for j = 1:2000
        theta   = 2*pi*rand();          % random theta between zero and 2pi
        x       = x+d*cos(theta);       % next value of x
        y       = y+d*sin(theta);       % next value of y
    end
    xfinal(i)   = x;
    yfinal(i)   = y;
    r(i)        = sqrt(x^2+y^2);
end
scatter(xfinal,yfinal,10,"filled") ;    % plot the random walk
axis equal;                             % equal dimensions for axes
xlabel('X','FontSize',14);              % x-axis label
ylabel('y','FontSize',14);              % y-axis label

