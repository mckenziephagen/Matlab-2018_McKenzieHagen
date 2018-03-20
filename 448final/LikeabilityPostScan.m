%Post-scan Likeability Task for Jess 
%also Psych 448- Matlab Wi18 final 


% notes: subject folder 


%read in .txt files 

%homedr=uigetdir(pwd); %this will let you set your directory

homedr='/Users/mckenziehagen/Documents/448 - MATLAB /Matlab-2018_McKenzieHagen/448final';

cd(homedr);
dirlist=dir('10*');

%read in female .txt file
femalefileID = fopen('femaleListRank.txt');
fscanf(femalefileID,'%s', 1);
fscanf(femalefileID,'%s', 1);
for i=1:20
    fscanf(femalefileID, '%d', 1);
    femalefaceRating{i}=fscanf(femalefileID, '%s', 1)  ;  
end
fclose(femalefileID);

%read in male .txt file
malefileID = fopen('maleListRank.txt');
fscanf(malefileID,'%s', 1);
fscanf(malefileID,'%s', 1);
for i=1:20
    fscanf(malefileID, '%d', 1);
    malefaceRating{i}=fscanf(malefileID, '%s', 1)  ;  
end
fclose(malefileID);


%categorize as positive faces or neutral
femalepositiveRating=femalefaceRating([1:4, 17:20]);
femaleneutralRating=femalefaceRating([7:14]); 

malepositiveRating=malefaceRating([1:4, 17:20]);
maleneutralRating=malefaceRating([7:14]);

femaletaskRating = [femalepositiveRating; femaleneutralRating]'; 
maletaskRating = [malepositiveRating; maleneutralRating]'; 

taskRating = [femaletaskRating; maletaskRating];

%%create new .txt file with positive and neutral faces 
    %can I get this to save into subject folder? 


for d=1:length(dirlist)
fid = fopen('taskRating.txt', 'w') ;
for r=1:1:size(taskRating, 1)
fprintf(fid, '%s\t', taskRating{r, 1}) ;
fprintf(fid, '%s\n', taskRating{r, 2});
end
end 



sca;
close all;
clearvars;


try
    
Screen('CloseAll');
screens=0;

[wPtr,rect]=Screen('OpenWindow',screens, 255, []);

Screen('DrawText',wPtr,'warning',250,500);
Screen('DrawText',wPtr,'your breath is very stinky',250,515);
Screen('Flip',wPtr);
pause(5)







Screen('CloseAll');

catch ME
    Screen('CloseAll');
    rethrow(ME);
end



