clear;                                  % clear variables and functions
tic;                                    % start clock
d       = 0.01;    
np      = 500000;                       % number of particles
tstep   = 2000

for i = 1:np    
    x = 0;                              % initial x at origin
    y = 0;                              % initial y at origin
    for j = 1:tstep
        theta   = 2*pi*rand();          % random theta between zero and 2pi
        x       = x+d*cos(theta);       % next value of x
        y       = y+d*sin(theta);       % next value of y
    end
    xfinal(i)   = x;
    yfinal(i)   = y;
    r(i)        = sqrt(x^2+y^2);
end

dr          = 0.05;                     % bin width
binedges    = 0:dr:max(r)+dr;           % bin edges. Starts at zero, 
                                        % step size of binwidth,
                                        % ends at ceil of maximum value of r.
histogram(r,binedges);
grid on;
xlabel('Final value of r','FontSize',14)
ylabel('Counts','FontSize',14)
toc                                     % stop clock