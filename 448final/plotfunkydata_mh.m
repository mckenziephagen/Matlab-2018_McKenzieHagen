

%so many variables 
female = p.gender_class(1);
male = p.gender_class(2);
female_ind = find(p.gender == 1); 
male_ind = find(p.gender ==2) ; 

n_women = length(female_ind); 
n_men = length(male_ind); 


apple = p.computer_class(1) ; 
pc = p. computer_class(4) ; 

apple_ind = find(p.computer == 1); 
pc_ind = find(p.computer == 4);

gender = p.gender (:) ; 
gender(female_ind) = 1; 
gender(male_ind) = 2; 

computer  = p.computer (:) ; 
computer(apple_ind) = 1 ; 
computer(pc_ind) = 2 ; 

men_computer = computer(male_ind) ; 
men_pc = length(find(men_computer == 2))./n_men ; 
men_apple = length(find(men_computer == 1))./n_men ; 

women_computer = computer(female_ind) ; 
women_pc = length(find(women_computer == 2))./n_women ; 
women_apple  = length(find(women_computer == 1))./n_women ; 

%plot plot plot 
f=figure(1);
set(f, 'Name','computer by gender');

%bar graph 
a1=subplot(2,2,1); title('bar plot without errorbars'); % axis!

set(a1, 'FontName', 'Geneva');
t=title('simple bar', 'FontAngle', 'italic');
p1=bar([women_pc women_apple men_pc men_apple]);
set(p1, 'FaceColor', [1 .5 .5])
labels={'women pc' 'women apple' 'men pc' 'men apple'};
set(gca,'XTick', [1:4]);
set(gca,'XTickLabel', labels);



sterr=sqrt([[n_women * women_pc * women_apple]./n_women ...
           [n_women * women_pc * women_apple]./n_women ; ...
           [n_men * men_pc * men_apple]./n_men ...
           [n_men * men_pc * men_apple]./n_men]);

a2 = subplot(2,2,2); title('bar plot with errorbars');
p2 = barweb([women_pc women_apple; men_pc men_apple], sterr, [], {'women' 'men'}, 'gender & computers', [],'percent',[ 1 .5 .5; 1 0 1]);

set(a2, 'YLim', [0 1.2])

% ================================%
% QUESTION 1. Add a stacked bar plot in this subplot. 
% use >doc bar for help or try this code as an example

a3=subplot(2,2,3);
barmat = [women_pc women_apple; men_pc men_apple];
bar(a3, barmat,'stacked');


% ================================% 
% QUESTION 2.add a subplot that is the same as the one above but
% replaces facebook friends with the number of gaming hours 
% ================================% 
% ================================% 


facebook = p.friends
grade = p.Exam1
gaming = p.games_hours 
sleep = p.sleep

figure(2);
set(gcf,'Name', 'Do computers rot your brain?');
subplot(1,3,1)
plot(facebook, grade, 'ko');
xlabel('Facebook friends');
ylabel('grade'); 

subplot(1, 3, 2); 
plot(gaming, facebook, 'ko'); 
xlabel('Hours spent gaming per week'); 
ylabel('grade on first exam'); 


% ================================% 
% QUESTION 3.add a subplot that is the same as the one above but
% plots  the number of gaming hours on the x-axis, and the number of hours
% of sleep on the y-axis
% ================================% 

subplot(1, 3, 3); 
plot(gaming, sleep, 'ko'); 
xlabel('Hours spent gaming per week'); 
ylabel('hours slept per night '); 

% ================================% 
% QUESTION 4. In figure 3. use plot3d to do a 3d plot comparing sleep, gaming and
% facebookfriends
% ================================% 

figure(3); 
set(gcf, 'Name', 'Computers DO rot your brain'); 
scatter3(sleep, gaming, facebook); 
xlabel('hours slept per night'); 
ylabel('hours spent gaming a week'); 
zlabel('number of facebook friends'); 


% ================================% 
% QUESTION 5. Choose anything to plot and plot it
% ================================% 


coffee = p.caffeine 

figure(4) 
set(gcf, 'Name', 'The relationship between caffeine consumption and hours slept'); 
plot(coffee, sleep, 'ko'); 
xlabel('cups of coffee consumed per day'); 
ylabel('hours slept per night'); 















