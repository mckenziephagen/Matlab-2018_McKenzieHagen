mat8 = zeros(3, 4) 
for i=1:3 
    for j = 1:4
        mat8(i, j) = i+j 
    end 
end 

mat9 = zeros(3, 4) 
for i= 1:3 
    for j=1:4 
        mat9(i, j) = ((i-1)*4)+j 
    end 
end 