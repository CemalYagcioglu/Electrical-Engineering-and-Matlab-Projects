function [LeapTimes, GivenYears] = LeapYears(Year1, Year2)

%Years = [Year1:Year2]

% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]


% Error checking

% Calculations

if(nargin<1)
   error('At least one input is required.')
end

if (nargin==1)
    if(floor(Year1)~=Year1 | length(Year1)~=1) 
%&& floor(Year1)~=Year1)
    error('Single integer values only.')
    else
        GivenYears=[Year1];
        LeapTimes=[0];
    end
end
        %%(nargin==1 && ismatrix(Year1)==0 && floor(Year1)==Year1) this 
        %%did
        %%not work
    if nargin==2
        if(length(Year2)~=1 || length(Year1)~=1 ||floor(Year2)~=Year2 || floor(Year1)~=Year1)
            error('Single integer values only.')
        end
        if(Year2<Year1)
            error('Invalid range')
        end
        GivenYears=(Year1:Year2);
        LeapTimes=zeros(size(GivenYears));
    end
    
    for a=1:length(GivenYears)
        if mod(GivenYears(a),400)==0
            LeapTimes(a)=1;
        elseif mod(GivenYears(a),100)~=0 && mod(GivenYears(a),4)==0
            LeapTimes(a)=1;
        end
    end
end
% Error checking

% Calculations

