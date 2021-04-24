function [t, x] =  initialc(D,mb,mp,ms)
% input valiables: D,mb,mp,ms. D=Rp/Rtidal is the penetration factor. 
% out variables: t and x. Note that x is a vector. 
% Define the initial values of t and x as functions of the input valiables. 
Rt 		= (mb)^(1/3)						;	% tidal radius
R0 		= 10 * Rt 							;	% initial distance between BH and binary
f0 		= -acos(-1+(D/5))					;	% initial true anomaly (eq 44)
Rdot	= sin(f0) * mb^(1/3) / (sqrt(2*D))	;	% dR/dt (eq 49a)
Fdot 	= (1+cos(f0))^2 * sqrt(2) / ...
		  (4*D^(3/2))						;	% df/dt (eq 49b)

xcmxdot = Rdot*cos(f0) - R0*Fdot*sin(f0)	;	% d(xcmx)/dt (using eq 41a)
xcmydot = Rdot*sin(f0) + R0*Fdot*cos(f0)	;	% d(xcmy)/dt (using eq 41b)

phi 	= pi/2								;	% binary phase
rpxdot 	= -ms*sin(phi+pi)					;	% d(rpx)/dt (using problem 2)
rpydot 	= ms*cos(phi+pi)					;	% d(rpy)/dt (using problem 2)
rsxdot 	= -mp*sin(phi)						;	% d(rsx)/dt (using problem 2)
rsydot 	= mp*cos(phi)						;	% d(rsy)/dt (using problem 2)

t 		= (sqrt(2)/3) * (D^(3/2)) * ...
		  (tan(f0/2))*(3+(tan(f0/2))^2)		;	% initial time t0
x(1) 	= (R0*cos(f0)) + (ms*cos(phi+pi))	;	% x_p
x(2) 	= (R0*sin(f0)) + (ms*sin(phi+pi))	;	% y_p
x(3) 	= xcmxdot+rpxdot					;	% v_xp
x(4) 	= xcmydot+rpydot					;	% v_yp
x(5) 	= (R0*cos(f0)) + (mp*cos(phi))		;	% x_s
x(6) 	= (R0*sin(f0)) + (mp*sin(phi))		;	% y_s
x(7) 	= xcmxdot+rsxdot					;	% v_xs
x(8) 	= xcmydot+rsydot					;	% v_ys