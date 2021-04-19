% example 1Aa: drawing a circle

% When you write code, it is a good practice to add comments 
% that describe the code. Comments allow others to understand 
% your code, and can refresh your memory when you return to it 
% later. Add comments to Octave code using the percent (%) symbol.
% Anytime Octave encounters a percent sign (%), it treats the rest 
% of the line as a comment.  section 26, Octave tutorial

clear        % clear variables and functions from memory
for i=1:100  % Repeat statements a specific number of times,i.e. 100 times
             % see section 27.1, Octave tutorial
    theta = 2*pi*i/100; % theta= 2pi/100, 4pi/100, 6pi/100,...
                        % pi: a built-in octave variable, 3.1415....
                        % semicolon suppresses output from octave command
                        % see section 17, Octave tutorial 
    x(i)  = cos(theta); % define i-th element of x vector. sec 5, tutorial 
    y(i)  = sin(theta); % define i-th element of y vector     
end

plot(x,y)  % plots vector Y versus vector X. see section 17
axis equal % sets the aspect ratio so that equal tick mark
           % increments on the x and y axis are equal in size.
xlabel('X','FontSize',20) % X-axis label
ylabel('y','FontSize',20) % Y-axis label
