% TestCharge.m
% Michael R. Gustafson II
% September, 2016
%
% Run through 6 test cases that should break Charge.m

%% Initialize workspace
clear; format short e
%
% Run and save documentation
!rm ChargeDiary.txt
diary ChargeDiary.txt
for Test = 1:6
    try
        switch Test
            case 1 % no inputs
                Charge
            case 2 % four inputs (too few)
                Charge(1, 2, 3, 4)
            case 3 % matrix for q0
                Charge(1, [2 3], 4, 5, 6)
            case 4 % matrix for R
                Charge(1, 2, [3; 4], 5, 6)
            case 5 % matrix for L
                Charge(1, 2, 3, [4 5], 6)
            case 6 % matrix for C
                Charge(1, 2, 3, 4, [5; 6])
        end
    catch MyError
        fprintf('Case %0.0f error: %s\n', Test, MyError.message)
    end
end
diary off