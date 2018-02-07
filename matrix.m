%%making matricies 
%provides examples fof ways to make matrices 
%written MH 1/22/18 

mat1=zeros(5,4);
mat2=mat1;
mat2(1:5,3)=1

mat2=mat1;
mat2(1:end, 3) = 6; 

mat2(:, 3) = 6; 

mat2=mat1;  
mat2(4, 1:4) = 1

mat2 = mat1; 
mat2(4, :) = 1; 


%% now for something new 

mat = zeros(4) 
for i = 1:4
    mat(i , i) = i 
    pause
end 
%%

mat = zeros(6); 
for i = 1:6
    mat(i, :) = [-2 0 -1 1 2 3]  
    pause
end 
%% 

mat = zeros(5) 
for i = 1:5 
    mat(i, :) =[ 0 0 1 1 0] +i
end 

%% 
mat = zeros(3, 4) 
for i = 1:3 
    for j= 1:4 
        mat(i, j) = i+j 
        pause
    end 
end 
imagesc(mat)

%% 
mat = zeros(3,4) 
for i = 1:3
    for j = 1:4 
        mat( i, j) = ((i-1)*4) +j
    end 
end 

mat = zeros(3,4) 
for iRow = 1:3 
    mat(iRow, :) = ((iRow -1) * 4) + [1:4]
   
end 
mat 
v = 1:12; 
mat2 = reshape(v, 4, 3)' 

mat = [ 1 2 3; 4 5 6; 7 8 9] ; 
vect = mat(:) 
ind = sub2ind(size(mat), 3, 2)

%%
%repmat is a command for replicaating arrays 

x = [ 1 5 3 2 5] 
size(x) 
x = repmat(x, 3, 2)

x = [2 3 4; 5 6 7] 
size(x) 
Y = repmat(x, 3, 2) 


%%
rmat = rand(5,5)
rmat2 = rand(5, 5)
for iRow = 1: size(rmat, 1)
    for iCol = 1:size(rmat, 2)
        if rmat (iRow, iCol) <rmat2(iRow, iCol)
            rmat(iRow, iCol) = rmat2(iRow, iCol) 
        end 
    end 
end 




%%

n = 0; 
while n<1 
    n = randn(1); 
    disp(n) 
end

tic 
while toc<3 
    ; 
end 



