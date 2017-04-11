function Exp = setExperimentPars

Exp = struct(...
            'soundOn', 0,...
            ...
            'maxTraj', 90, ...
            'pause_frames', 60*2, ...       %  ~2 secs pause between trials
... room related parameters that change on every trial
             'visibleDepth',     [25], ... % Generally ~ same distance in cm, check each distance (previously 500) *9.5/8
             'contrLevels',  0.6*[1  1   0.3  1    0   1   1  1.2  1   ],...[1.25 1 1 0.75 1 1 0   1 1 1.25 0.75 1 1],...0.75*[1 1 1 1 0 1 1],...0.75*[1 1 1 1 1 1 1 0 1 1],...0.85*[1 1 1 1 1 0 0 0 1 1 1],...[1],...[1 1 1 1 0],...[1 1 1 1 1 0 1 1 1 0],...[1],...[1 1 1 0],... % List the levels of contrast to be used, contrast on any trial will be picked at random
             'lengthSet',        [1  1   1    0.75 1   1   1  1    1.25],...[1 0.75 1 1 1.25 1 1    1 0.75 1 1 1 1.25],...[1],...[1],...[1 1 1.2 1 1 1 1 1 1 0.8](range 0.1 to 2)
             'scaleSet',         [1  0.7 1    1    1   1.3 1  1    1   ],...[1],...[1 1 1.2 1 1 1 1 1 0.8 1],...[1],... (1: gives room size 1m, as room length is 100)
             'active',           [1  1   1    1    1   1   1  1    1   ],...[0  1   1    1    1   1   0  1    1   ],...[0 1 0 1 1 0 1    0 1 1 1 0 1],...[0 1 0 1 1 1 0],...[0 0 0 1 0  1 0 1 1 0],...[0 ones(1,4) ones(1,5) 0 ones(1,4) 0 ones(1,4) 0 ones(1,4) 0*ones(1,5) ones(1,5) 0 ones(1,4) 0 ones(1,4) 0 ones(1,4) 0*ones(1,5) ones(1,5) 0 ones(1,4) 0 ones(1,4) 0 ones(1,4)],... 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 1 1 1 1 1 0 1 1 1 1 0 1 1 1 1],...1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1],...                % 0: passive reward at centre, 1: active reward in region
             'rew_pos',       70*[1  1   1    1    -1  1   1  1    1   ],...[50*ones(1,30) 70*ones(1,30) 50*ones(1,30)], ... [50],...            % centre of reward position
             ...
             'scaling', 1, ...
             'randScale', 0,...
             ...
             'changeLength', 1, ...
             'randLength', 0,...
             ...
             'randStart', 0, ...
             'startRegion', 0.01, ...
             ...
            'contrWalls', 1,...              % Change contrast on only textures (0) or on walls as well (1)
            'randContr', 0,...
            ...
... reward related parameters
             'BASEvalveTime',0.04,...           % Reward for correct base
             'PASSvalveTime',0.04,...           % Reward for correct base
             'ACTVvalveTime',0.09,...           % Reward for correct base
             'maxBadLicks', 4,...
             'punishZone', 60,...
             'punishLim', 5,...
             'PtoA', [1],...
             'rew_tol', 5, ...             % +/- extent of reward position
             ...
             ... 'rew_vis', 1, ...              % 1:rewards visual position, 0: rewards run position 
             'maxNRewards', 2,...               % max number of rewards on a single base
             'rewardGap', 0.7, ...              % time in between two rewards on a single base
             'rewardDelay', 0.7, ...            % delay for the first reward             
... maze related parameters (in cm at scaling = 1)
            'vh', 2,...    % -(h/2) + 'c3' is the viewing height
            'tw', 8, ...    % texture width
            'l', 100.0, ...
            'b', 8, ...     % 
            'h', 8, ...     % 
            'tc1', 20,...
            'tc2', 40,...
            'tc3', 60,...
            'tc4', 80,...
            'delta', 0.05, ...
            'etw1', 0, ...
            'etw2', 0, ... 
            ...
            'bidirec', 0, ...               % to go back and forth on the track
            'trajDir', 'cw',...               %  'cw' clockwise, 'ccw' counter clockwise
... rig related parameters
             'wheelType', 'WHEEL', ... % This can be either 'BALL', 'WHEEL', 'KEYBRD'
             'wheelRadius', 17.78/2, ...   % Mainly for the rotary encoder (WHEEL), which then uses it to get the units right
             'wheelToVR', 1.1, ...
... reward corners
            'rewCorners', [1 2 3],... where 1: LEG1-2, 2:LEG2-3, 3:LEG3-4, 4:LEG4-1
... noise related
            'speckleNoise', 0,...           % Add speckle noise
            'speckleSize', 20,...            % (centre +- speckleSize) will be coloured
            'speckleLevel', 5,...           % fraction of pixels in with speckle noise
            'speckleType', 'RAND',...       % 'GRAY' give gray squares, 'RAND' gives rand grayscale
            ...
... texture related
            'textureFile', 'textures_hf_new',...       % WHITENOISE, COSGRATING, GRAY      
            ...
            'backgroundText','WHITENOISE',...
            ...
            'leftWallText', 'WHITENOISE2',...
            'rightWallText', 'WHITENOISE',...
            'floorText', 'WHITENOISE3',...
            'farWallText','GRAY',...
            'ceilingText', 'WHITENOISE4',...
            'nearWallText','GRAY',... 
            ...
            'Leg1Text1', 'VCOSGRATING',...
            'Leg1Text2', 'VCOSGRATING',...
            'Leg1Text3', 'VCOSGRATING',...
            'Leg1Text4', 'VCOSGRATING',...
            ...
            'Leg2Text1', 'PLAIDS',...
            'Leg2Text2', 'PLAIDS',...
            'Leg2Text3', 'PLAIDS',...
            'Leg2Text4', 'PLAIDS',...
            ...
            'Leg4Text1', 'PLAIDS',...
            'Leg4Text2', 'PLAIDS',...
            'Leg4Text3', 'PLAIDS',...
            'Leg4Text4', 'PLAIDS',...
            ...
            'Leg3Text1', 'VCOSGRATING',... 
            'Leg3Text2', 'VCOSGRATING',...
            'Leg3Text3', 'VCOSGRATING',...
            'Leg3Text4', 'VCOSGRATING',...
            ...
            'end_walls', 0,...                      % Do you want to have extra ends
            ...
            'End1Text1', 'GRAY',...'RED',...
            'End1Text2', 'GRAY',...'RED',...
            'End1Text3', 'GRAY',...'RED',...
            'End1Text4', 'GRAY',...'RED',...
            ...
            'End2Text1', 'GRAY',...'BLUE',...
            'End2Text2', 'GRAY',...'BLUE',...
            'End2Text3', 'GRAY',...'BLUE',...
            'End2Text4', 'GRAY',...'BLUE',...
            ...
... other parameters
             'date', date,...                   %date of the experiment
             'maxNTrials',20,...                %max number of trials within a session
             'maxTrialDuration', 40,...    % max session duration in secs
             'lazyTolerance', 0.1,...             % max movement tolerance of Lazy (Still) state
             'lazyTimeLimit', 10, ...           % max still time allowed before a timeOut
             'timeOut', 3, ...                  % time out duration
             'syncSquareSize', 75,...          % size of synchroniztation square read by photodiode
             'syncSquareSizeX', 250,...          % size of synchroniztation square read by photodiode
             'restrictInRoom', 1,...
... Parameters to change
             'directionTolerance',90,...        % maximum angle (in degrees) of direction change tolerated away 
            ...                                  from the center of target base 
             'correctTolerance',15,... 
             'STOPvalveTime',0.00,...           % Reward for stopping
             'stopTime',0.5,...                 % minimum STOP time required to process STOP related actions
             'minDistance',1 ...               % minimum distance to travel for 
            ...
        );
    
         Exp.w = (Exp.b)*2; % should be the same as Ex..b2 - Exp.b1/2
         Exp.b = Exp.b*(1/3); % This is because of the geometric correction made       
         Exp.h = Exp.h/2;
         Exp.tw = Exp.tw/2;
         Exp.c3 = Exp.vh-Exp.h;
end
%     'minOffsetAngle',0,...            % offset angle of bases from with respect to observer's view angle at the time base appears
%              'maxOffsetAngle',0,...
%              'bias',0,...                      % Bias should be less than Offset
%              'rewardScheme', 'BIN',...         % Can be either 'PROB','BIN' for probabilistic or binary
%              'difficulty',7 ...                 % This is for Probabbilistic reward only
%           
% ... base related parameters
%              'nCUE','SINGLE',...                %options: SINGLE, DOUBLE
%              'basePosition', 'CENTRE', ...      %options: CENTRE, OFFSET
%              'baseTexture', 'COSGRATING',...        % COSGRATING, GRAY, WHITENOISE, COS10x, COS50LARGE
%              'RollSpeed', 0, ...                % valid for cylinderm sphere or bump
%              'RollAngle', 0, ...          
%              'baseType', 'VERTICAL_DISK',...    %options: 'GROUND_DISK', 'VERTICAL_DISK', 'CYLINDER', 'SPHERE', 'BUMP'
%              'baseRadius', 0, ...              % base radius (same units as the room-random for now eventually will be in cm)
%              'baseDistance', 1,... %CHANGE BACK TO 60             % distance of the basefrom the subject when it appears
%              'cueGeneration','PRESET'...         % options: 'ONLINE', 'PRESET'.
