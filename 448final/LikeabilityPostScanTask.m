function trialdata = LikeabilityPostScanTask

%notes for Jess: m_pic13 disappeared so m_pic12 was dupicated and renamed
%to m_pic13... 
%refine instructions? 

%notes for Ione: text display across different computers? 

close all;
clearvars;
cd(pwd)
KbName('UnifyKeyNames');
Screen('Preference', 'SkipSyncTests', 1);
%% variable list

neutfilename='neutraltaskRating.txt';
posfilename='positivetaskRating.txt';

tmp=input('filename ... ', 's');
writefilename = [tmp, '_', datestr(now, 'mm_dd_yy'), '.dat'];
blockorder=input('positive first (0) or negative first (1) ... ');

%% read in neutral file
neutfileID = fopen(neutfilename);
fscanf(neutfileID,'%s', 1);
fscanf(neutfileID,'%s', 1);
for i=1:14
    fscanf(neutfileID, '%d', 1);
    neutFiles{i}=fscanf(neutfileID, '%s', 1)  ;
end
fclose(neutfileID);

for i = 1:14
    neutimage(i).img = imread(char(neutFiles(i)));
    neutimage(i).sz = size(neutimage(i).img);
end

%% read in positive files
posfileID = fopen(posfilename);
fscanf(posfileID,'%s', 1);
fscanf(posfileID,'%s', 1);
for i=1:14
    fscanf(posfileID, '%d', 1);
    posFiles{i}=fscanf(posfileID, '%s', 1)  ;
end
fclose(posfileID);

for i = 1:14
    posimage(i).img = imread(char(posFiles(i)));
    posimage(i).sz = size(posimage(i).img);
end

%%  task
try
    
    Screen('Preference', 'VisualDebuglevel', 0);
    screens=0;
    Screen('Preference','SkipSyncTests',1);
    [wPtr]=Screen('OpenWindow',screens, [], [0 0 1024 768]);
    

    if blockorder == 0 %0 means positive first
        PositiveInstructions(wPtr);
        posdata = PutUpFaces(posimage, wPtr);
         NeutralInstructions(wPtr);
        neutdata = PutUpFaces(neutimage, wPtr);
    else 
        NeutralInstructions(wPtr); 
        neutdata = PutUpFaces(neutimage, wPtr);
         PositiveInstructions(wPtr);
        posdata = PutUpFaces(posimage, wPtr);
    end
    
catch ME
    Screen('CloseAll');
    rethrow(ME);
end

Screen('CloseAll');

fileID = fopen(writefilename,'w');
for i=1:length(posimage)
    fprintf(fileID,'%s,\t%d,\t%s,\t%d,\r\n',posFiles{i}, str2num(posdata(i).resp), neutFiles{i}, str2num(neutdata(i).resp));
end
fclose(fileID);
end

function  PositiveInstructions(wPtr)
% put up instructions
DrawFormattedText(wPtr, ...
    'For this task, you will be looking at pictures of kids who have rated you positively', 'center', 600); 
DrawFormattedText(wPtr, 'Press any key to continue', 'center', 650); %Will this format correctly on any computer screen?
Screen('Flip',wPtr);
pause; 

end


function  NeutralInstructions(wPtr)
% put up instructions
DrawFormattedText(wPtr, ...
    'For this task you will be looking at pictures of kids who have not had a chane to rate you', 'center', 600);
   DrawFormattedText(wPtr, 'Press any key to continue', 'center', 650);
   Screen('Flip',wPtr);
pause; 
end

function trialdata = PutUpFaces(faces, wPtr)

order=randperm(length(faces));
goodKeys={'1' '2' '3' '4' '5' '6' '7' '8' '9'};
scFac = 2; % used to expand the face image size
for n = 1 : length(faces)
    texture = Screen('MakeTexture', wPtr, faces(order(n)).img);
    %         [imgrect,dh,dv] = CenterRect(scFac * [ 0 0 neutimage(n).sz(2) neutimage(n).sz(1)] , ...
    %             [ 0 0 1024 768] );
    rect=Screen('Rect', wPtr);
    [imgrect] = CenterRect(scFac * [ 0 0 faces(n).sz(2) faces(n).sz(1)], rect);
    % remember LeTeRBox, left, top, right, bottom
    Screen('DrawTexture', wPtr, texture,[], imgrect);
    DrawFormattedText(wPtr,'Rate this face', 'center', rect(4)/8); 
    DrawFormattedText(wPtr, '1  2  3  4  5  6  7  8  9', 'center', rect(4)*7/8);
    Screen('Flip',wPtr);
    FlushEvents;
    key='x';
    while ~sum(strcmp(key, goodKeys))
        key = GetChar;
    end
    trialdata(order(n)).resp=key;
    trialdata(order(n)).presentationorder=n;
      
end
end