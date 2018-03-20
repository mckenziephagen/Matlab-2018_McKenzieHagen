%Post-scan Likeability Task for Jess 
%also Psych 448- Matlab Wi18 final 

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
femaletaskRating = [femalepositiveRating; femaleneutralRating]';  

malepositiveRating=malefaceRating([1:4, 17:20]);
maleneutralRating=malefaceRating([7:14]);
maletaskRating = [malepositiveRating; maleneutralRating]';  


positive_rating = [femalepositiveRating(:); malepositiveRating(:)];
neutral_rating = [femaleneutralRating(:); maleneutralRating(:)]; 

% 
% taskRating = [femaletaskRating; maletaskRating]; 
% 
% for d=1:length(dirlist) 
% fid = fopen('taskRating.txt', 'w') ; 
% fprintf(fid, 'positive netural');
% for r=1:1:size(taskRating, 1) 
% fprintf(fid, '%s\t',taskRating{r, 1}) ; 
% fprintf(fid, '%s\n', taskRating{r, 2}); 
% end 
% end  


for d=1:length(dirlist)
    fid = fopen('neutraltaskRating.txt', 'w') ;
    for r=1:1:size(neutral_rating, 1);
        fprintf(fid, '%s\n', neutral_rating{r, 1}) ;
    end
end


for d=1:length(dirlist)
    fid = fopen('positivetaskrating.txt', 'w') ;
    for r=1:1:size(positive_rating, 1);
        fprintf(fid, '%s\n', positive_rating{r, 1}) ;
    end
end

