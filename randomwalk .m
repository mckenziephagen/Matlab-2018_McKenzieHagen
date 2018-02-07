
nstep = 20 
timepts = 1: .1: 2; 

forwardspeed = .03;
noise = .8; 
stepsize = 5; 
footposition(1) = 0; 



for i = 2:length(timepts)
footposition(i) = footposition(i-1) + ...
    forwardspeed + ...
    (noise + rand(1, 1));
end 

plot(footposition)