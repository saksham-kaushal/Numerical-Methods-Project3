clear;
x(1) 	= 0;    						% initial x at origin
y(1) 	= 0;    						% initial y at origin
d 		= 0.01;    
for i = 1:2000   	 					% for loop with 2000 steps
    theta 	= 2*pi*rand();    			% random theta between zero and 2pi
    x(i+1) 	= x(i)+d*cos(theta);    	% next value of x
    y(i+1) 	= y(i)+d*sin(theta);    	% next value of y
end    
plot(x,y);    							% plot the random walk
axis equal;    							% equal dimensions for axes
xlabel('X','FontSize',14);    			% x-axis label
ylabel('y','FontSize',14);    			% y-axis label
