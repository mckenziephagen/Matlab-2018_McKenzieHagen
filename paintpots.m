%paintpots 

img = 1:5 

pp1 = [0 0 0 ; .25 .25 .25; .5 .5 .5; .75 .75 .75; 1 1 1]

pp2 = [ 0 0 1; 1 1 1; 1 0 1; 0 0 1] 

figure(1)

image(img)

colormap(pp1)

colormap(pp2)