clear;
x(1) = 0;
y(1) = 0;
d = 0.01;
for i=1:2000
    theta = 2*pi*rand();
    x(i+1) = x(i)+d*cos(theta);
    y(i+1) = y(i)+d*sin(theta);
    
plot(x,y)
axis equal