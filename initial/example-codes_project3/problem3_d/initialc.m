function [t, x] =  initialc(D,mb,mp,ms)
% input valiables: D,mb,mp,ms. D=Rp/Rtidal is the penetration factor. 
% out variables: t and x. Note that x is a vector. 
% Define the initial values of t and x as functions of the input valiables. 
% t    = -15.129 ; % initial time
% x(1) = -980 ; % x : primary star
% x(2) = -200.2 ; % y
% x(3) =  44.92; % dx/dt
% x(4) =  4.472; % dy/dt
% x(5) = -980 ; % x : secondary star
% x(6) = -199.2 ; % y
% x(7) =  43.92; % dx/dt
% x(8) =  4.472; % dy/dt

ang = pi/2;
Rt = (mb)^(1/3);
f0 = -acos(-1+(D/5));
Rp = 3*Rt;
R = 10*Rt;

Rdot = sin(f0)*mb^(1/3)/(sqrt(2*D));
Fdot = (1+cos(f0))^2 * sqrt(2) /(4*D^(3/2));
Xcmx = Rdot*cos(f0)-R*Fdot*sin(f0);
Xcmy = Rdot*sin(f0)+R*Fdot*cos(f0);
Rpx = -ms*sin(ang+pi);
Rpy = mp*cos(ang+pi);
Rsx = -mp*sin(ang);
Rsy = ms*cos(ang);

t = (sqrt(2)/3)*(D^(3/2))*(tan(f0/2))*(3+(tan(f0/2))^2);
x(1) = (R*cos(f0)) + (mp*cos(ang+pi));
x(2) = (R*sin(f0)) + (mp*sin(ang+pi));
x(3) = Xcmx+Rpx;
x(4) = Xcmy+Rpy;
x(5) = (R*cos(f0)) + (ms*cos(ang));
x(6) = (R*sin(f0)) + (ms*sin(ang));
x(7) = Xcmx+Rsx;
x(8) = Xcmy+Rsy;