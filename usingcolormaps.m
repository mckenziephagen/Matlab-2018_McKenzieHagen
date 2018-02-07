%%using color maps 

img = 1:10 
figure(1)
pp= ones(10,3); 
image(img) 
colormap(pp)
axis off

for i= 1:10 
    pp(i, :) = i/10 
    colormap(pp)
     
end 


% exciting color maps 

img = reshape(1:64, 8, 8) 
image(img) ; colormap(gray(64)); 
axis equal 
axis off 
drawnow 
pp = rand(64, 3) ;

for i = 1:200 
  
    colormap(pp) 
    drawnow; 
end 


%% 

contrast  = linspace (0, 1, 5); 
size = 2:2:12; 

nc = [5 6 5 6 4; 4 6 8 9 9; 6 5 7 10 8; 3 5 8 9 10; 5 6 9 10 10; 6 5 8 10 9]

image(contrast, size, nc) 
colormap(gray(10)) 
xlabel('contrast')
ylabel('size'); 

set(gca, 'XTick', contrast) 

set(gca, 'XTickLabel', contrast)


ncmap = colormap(gray(10)); 
pcmap(1:50, :) = 0
image(pc)

colormap(pcmap)

pc = 100 * nc/10

%% 

nstep = 20 
timepts = 1: .1: 2; 

forwardspeed = .03;
noise = .8; 

footposition(1) = 0; 
for i = 2:length(timepts)
footposition(i) = footposition(i-1) + ...
    forwardspeed + ...
    (noise + rand(1, 1));
end 

plot(footposition) 


