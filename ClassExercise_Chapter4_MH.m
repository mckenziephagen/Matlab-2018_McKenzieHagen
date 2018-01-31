
%%Q 4.1: Making matrices

%Create the following matrices without typing in the numbers by hand:
A = [1     1     1     1     1
     1     1     1     1     1
     2     2     2     2     2
     2     2     2     2     2
     2     2     2     2     2];
 
 matA = ones(5, 6) 
 matA(3:5, 1:6) = 2

B = [1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1
     1     1     0     0     1];
 
 matB = ones(4, 5)
 matB(1:4, 3:4) = 0

C = [1     1     1     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     0     0     1     1
     1     1     1     1     1
     1     1     1     1     1];
 
 matC = ones(6, 5)
 matC(2:4, 2:3) = 0

D = [1     1     1     1     1
     2     2     2     2     2
     3     3     3     3     3
     4     4     4     4     4
     5     5     5     5     5];

 matD = zeros(5)
 for i = 1:5 
     matD(i,:) =  i 
    
 end 
 
E = [2     2     2     2     2     2
     1     2     2     2     2     2
     1     1     2     2     2     2
     1     1     1     2     2     2
     1     1     1     1     2     2
     1     1     1     1     1     2]; 
 
matE = ones(6) 
for i = 1:6 
    for j = 1:6 
        if i<=j 
           matE(i, j)=2; 
        end 
    end 
end 
matE
 
% (This one has a Hint if you get stuck, see Hints section)
% if you let i correspond to the rows and j the collumns then you can set
% M(i, j) = 2 if i <= j 


F = [0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20
     0     5    10    15    20];
%(This one has a Hint too.)

matF = ones(5) 
for i = 1:6
    matF(:, i) = (i-1)*5
end 



G = [1     6    11    16    21
     2     7    12    17    22
     3     8    13    18    23
     4     9    14    19    24
     5    10    15    20    25];
 
matG = zeros(5)
for i = 1:5 
    matG(:, i) = [1 2 3 4 5] + ((i-1)*5)
end 
 

H = [1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0
     1     0     1     0     1     0     1     0];
 
 matH = zeros(8)
  matH(:, 1:2:end) = 1 
     
  
I = [1     0     0     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     1     0     0     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     1     0     0     0
     0     0     0     0     0     0     0     0
     0     0     0     0     0     0     1     0
     0     0     0     0     0     0     0     0];

matI = zeros(8) 
for i = 1:2:8 
    matI(i, i) = 1
end 
     
J = [0     1     2     3     4
     1     2     3     4     5
     2     3     4     5     6
     3     4     5     6     7
     4     5     6     7     8];
 
 matJ = zeros(5)
 for i=1:5
     matJ(i,:)=[0:4] + (i-1)
 end
 
    

K = [1     2     3     4     5
     2     4     6     8    10
     3     6     9    12    15
     4     8    12    16    20
     5    10    15    20    25];
 
 matK = zeros(5) 
 for i = 1:5 
     for j = 1:5 
     matK(i, j) = (i * j)
     end 
 end 
 

L = [1     2     3     4     5
     6     7     8     9    10
    11    12    13    14    15
    16    17    18    19    20
    21    22    23    24    25];

%UGH WRONG 
matL = zeros(5) 
for i = 1:5 
  matL(i,:) = [1 2 3 4 5] + ((i-2)+5) 
 end 
 

%% Q 4.2: 3d matrices

% a) Create a 3x3x3 matrix of zeros and set the very middle of the 3-d matrix to be a value of 1. 
mat = zeros(3, 3, 3)
mat (2, 2, 2) = 1

% b) Create a 5x5x5 matrix of zeros and set the middle 3x3x3 cube to 1.
mat = zeros(5, 5, 5)
mat (2:4, 2:4, 2:4) = 1
%% Q 4.3: sub2ind and ind2sub

% a)  Suppose you have a 4x3 matrix (4 rows and 3 columns).  What is the index into the element that is in the 3rd row and 2nd column?
mat = randn(3,4)

ind = sub2ind(size(mat), 3, 2)

% b) For the same size matrix, what is the row and column for the element with an index of 7?
[sub_row, sub_col] = ind2sub(size(mat), 7)

%% Q 4.4: logical operations

% a) Write a script so that if a variable 'x' is positive it prints the string 
% 'x is positive'
% And if x is negative the script prints the string
% 'x is negative'

x = 10 * (rand()-.75)
if x > 0
    disp ('x is positive')
else 
    disp ('x is negative') 
end 

% b) Write a statement that is true if the variable 'x' is either less than 2 or greater than pi.
x<2||x>pi
% c) Write a statement that is true if either x is greater than 2 and y is less than 4, or if z is equal to zero.
z = randn
y = randn
x = randn

(x>2&&y<0)||z==0
%% Q 4.5 While loops

%Write a script that repeatedly rolls two dice using this command:

while 
roll = ceil(rand(1,2));
rand(1,2) 
% and counts the number of rolls until [1,1] (‘snake eyes’) comes up.
