% McKenzie Hagen
% Exercises from "Matlab for the Behavioral Sciences" Chapter 2 
% Completed Jan 17 

%%Q 2.1
%a 
cheerios = 'CHEERIOS'; 
cheerios_scrambled = cheerios;
cheerios_scrambled(1) = 'O'; 
cheerios_scrambled(5) = 'P';

disp(cheerios_scrambled)

%b 
chemistry = 'CHEMISTRY'; 
chemistry(1) = 'O'; 
chemistry(8) = 'B'; 
disp(chemistry)

%c 
str = 'MACARONI AND CHEESE';
str(3) = 'O';
str(14) = 'O';
str(8) = 'R';
disp(str)

%%Q 2.2 
str = 'MACARONI AND CHEESE'; 
 
% again, I think I wanted id1 to be a vector, not a str (see homework)

id1 = str([1 2 7 9 14 15 16 17 18 19]); 

id2 = str([15 17 5 9 1 8 7 12 9 8 18 9 3 15 8 7 19 18 19]); 


%%Q 2.3 
%a 
a = [1:10]
a = linspace(1, 10, 10)

%b 
b = [10:2:18]

b = linspace(10, 18, 5)

%c 

c = [19:-1:15] 
c = linspace(19, 15, 5)

%d 

d = [10: -2: -4] 
d = linspace(10, -4, 8)

%e 

e = [3.1416: 3.1416: 15.7080] 
e = linspace(3.1416, 15.7080, 5) 

e = [pi: pi: 15.7080]
e = linspace(pi, 15.7080, 5)

%%Q 2.4 

str = 'aaaaaaaaaaaaaaaaaaaaa'

%a)

str(3:3:20) = 'c'

%b)

str(2:3:20) = 'b'

%c)

disp(str(3:end))

%d)

str(4:6) = 'def'

%e)
str(4:6) = 'def' 
str(10:12) = 'def' 
str(16:18) = 'def' 

%one line: 
str([4:6 10:12 16:18]) = 'defdefdef'

%f) 

disp(str([6 12 18]))

%%Q 2.5
%a) 

meas = [12:1.23:100]

% so this is actually super-dangerous because exp is the name of a matlab
% function. If you redefine it as a variable you will get some really
% confusing errors.
myexp = meas(1:40)

%b) 

myexp(5)

%c) 
myexp(end)
myexp(40)

%%Q 2.6 

resp = 'rerekererererererererererererererererere' 

disp(resp(5))

resp(5) = 'r'

disp(resp(1:2:40))

%%Q 2.7 

vect = 3:10 
vect(5:-1:2)
vect(vect(1:3))
clear

%a) 
vect = 12:-1:1

vect(1:12)
vect(12:-1:1)
vect([10 12 9 12 8 4])
vect(1:2)
vect(vect(1:2))
vect(vect)



