% RunLeapYears
% Michael R. Gustafson II (mrg)
% September 2016
% Script to test LeapYears function

%% Initialize the workspace
clear

%% Empty and open the diary
!rm LeapDiary.txt
diary LeapDiary.txt

%% Run through trials
for Trial=1:15
    % Use try...catch to catch and display errors
    try
        fprintf('Trial %0.0f:\n', Trial)
        % Use switch...case to distinguish trials
        switch Trial
            case 1 % no input error
                [ExtDay, Yrs] = LeapYears();
            case 2 % non-integer error
                [ExtDay, Yrs] = LeapYears(2013.1);
            case 3 % non 1x1 error
                [ExtDay, Yrs] = LeapYears([2000 2001]);
            case 4 % non 1x1 error
                [ExtDay, Yrs] = LeapYears([2000 2001]');
            case 5 % should work
                [ExtDay, Yrs] = LeapYears(1800);
            case 6 % should work
                [ExtDay, Yrs] = LeapYears(2000);
            case 7 % non 1x1 error
                [ExtDay, Yrs] = LeapYears([1 2], 3);
            case 8 % non 1x1 error
                [ExtDay, Yrs] = LeapYears(1, [2 3]);
            case 9 % non 1x1 error
                [ExtDay, Yrs] = LeapYears([1 2]', 3);
            case 10 % non 1x1 error
                [ExtDay, Yrs] = LeapYears(1, [2 3]');
            case 11 % non-integer error
                [ExtDay, Yrs] = LeapYears(1000.1, 1010);
            case 12 % non-integer error
                [ExtDay, Yrs] = LeapYears(1000, 1010.1);
            case 13 % invalid range error
                [ExtDay, Yrs] = LeapYears(5, 4);
            case 14 % should work
                [ExtDay, Yrs] = LeapYears(1894, 1902);         
            case 15 % should work
                [ExtDay, Yrs] = LeapYears(1994, 2002);    
            otherwise
                fprintf('No Trial detected\n\n');
        end
        fprintf('ExtDay: ');  fprintf('%0.0f ', ExtDay);
        fprintf('\nYears: '); fprintf('%0.0f ', Yrs);
        fprintf('\n')    
    catch ME
        % If there's an error, display it
        disp(['ERROR: ' ME.message])
    end
    fprintf('\n')
end
diary off
%% Get rid of purely blank lines
unix('sed -i ''/^$/d'' LeapDiary.txt ');
