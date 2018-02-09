clear all
flagsize=15;
saltire=zeros(flagsize);

for i=1:flagsize
    saltire(i, i)=1;
    saltire((flagsize+1)-i, i)=1;
end

figure(1);
image(saltire+1);
cmap= [0, 0, 1,; 1, 1, 1] 
colormap(cmap)


figure(2);
image(saltire+1);
cmap= [1, 0, 0; 1, 1, 1]
colormap(cmap)

george=zeros(flagsize);
george(ceil(flagsize/2), :)=1;
george(:, 8) = 1
figure(3)
image(george+1)
cmap=[ 1 1 1 ; 1 0 0];

colormap(cmap)


union=(saltire+(2*george))+1;
union(union>3)=3;
figure(4);
image(union);

cmap(1, :)= [0, 0, 1]; 
cmap(2, :)= [1, 0, 0];
cmap(3, :)= [1, 0, 0];
colormap(cmap);

bars=[ceil(flagsize/2)-1 ceil(flagsize/2)+1];
union(bars, :)=union(bars, :)+3;
union(:,bars)=union(:, bars)+3;
union(union>6)=union(union>6)-3; 

% convert all values greater than 6 to 6
figure(5);
image(union);
cmap(4, :)= [1, 1, 1]; 
cmap(5, :)= [1, 1, 1];
cmap(6, :)= [1, 0, 0];

colormap(cmap);

for i=1:flagsize
    for j=1:flagsize
        if i==j-1 || j==i-1 || i==j+1 || j==i+1 
            if union(i, j)<6
              union(i, j)=5;
              union(i, j) = 5; 
            end
        end
    end
end

figure(6)
image(union)
colormap(cmap)
axis off; axis equal










