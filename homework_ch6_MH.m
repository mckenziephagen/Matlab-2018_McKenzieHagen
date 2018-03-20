%increase for better resolution; will slow down processing if too high 

% first radial
m = 100;
n = round(m/.618); 

[x,y] = meshgrid(linspace(-1,1,n),linspace(-.618,.618,m));

rad = sqrt(x.^2+y.^2);
ang = atan2(y,x);

img = mod(ang, pi/6)

img (rad > .5) = mod(-ang(rad>.5), pi/6); 
figure(2)
clf 

imagesc(x(1,:),y(:,1),img);
colormap(gray(64))
axis equal
axis tight 

