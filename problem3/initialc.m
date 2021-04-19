function [t, x] =  initialc(D,mb,mp,ms)
% input valiables: D,mb,mp,ms. D=Rp/Rtidal is the penetration factor. 
% out variables: t and x. Note that x is a vector. 
% Define the initial values of t and x as functions of the input valiables. 
t    = -19.943 ; % initial time
x(1) = -400 ; % x : primary star
x(2) = -916.715 ; % y
x(3) = 37.6166 ; % dx/dt
x(4) = 24.4949 ; % dy/dt
x(5) = -400 ; % x : secondary star
x(6) = -915.715 ; % y
x(7) = 36.6166 ; % dx/dt
x(8) = 24.4949 ; % dy/dt
