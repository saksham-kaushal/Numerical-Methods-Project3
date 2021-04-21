clear;                                  % clear variables and functions
tic;                                    % start clock
d     = 0.01;                           % jump size at each timestep
np    = 1.e5;                         % number of particles
tstep = 2000;                           % number of timesteps for each particle

for i = 1:np                            % for each particle
    x = 0;                              % initial x at origin
    y = 0;                              % initial y at origin
    for j = 1:tstep                     % for each timestep
        theta   = 2*pi*rand();          % random theta between zero and 2pi
        x       = x+d*cos(theta);       % next value of x
        y       = y+d*sin(theta);       % next value of y
    end
    xfinal(i)   = x;
    yfinal(i)   = y;
    r(i)        = sqrt(x^2+y^2);
end

dr              = 0.05;                 % bin width
binedges        = 0:dr:max(r)+dr;       % bin edges. Starts at zero,
                                        % step size of binwidth,
                                        % ends at ceil of maximum value of r.
histogram(r,binedges);
grid on;
xlabel('Final value of r','FontSize',14)
ylabel('Counts','FontSize',14)
hold on;
midpoints       = binedges+dr/2;        % midpoints of bins, for plotting
for i = 1:length(binedges)
    n(i) = np * exp(-(binedges(i)^2)/(tstep*d*d))...
           * (1-exp((-(2*binedges(i)*dr+dr*dr))/(tstep*d*d)));
end

plot(midpoints,n,'LineWidth',2);
toc                                     % stop clock