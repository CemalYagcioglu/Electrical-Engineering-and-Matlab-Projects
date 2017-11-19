function CosSeriesChecker(NETID)
% CosSeriesChecker  Check CosSeries program
%   CosSeriesChecker(NETID) 
%     NETID: a string containing your NET ID
%     Generates CosSeriesCheckerPlot.eps with graphs of
%     approximations and relative errors for four angles

if nargin==0
    error('Be sure to run this with CosSeriesChecker(''ID'')')
end

% Initialize terms
WhichPlot=0;
NTerms = 20;
%% Loop through four angles
for MyAngle = [pi/4 1.01*pi/2 9*pi/4 41.01*pi/2]
    % Calculate approximations and errors
    [Approximation, RError] = CosSeries(MyAngle, NTerms);
    % Make and label the approximation series plot
    WhichPlot = WhichPlot+1;
    subplot(4,2,WhichPlot)
    bar(1:NTerms, Approximation, 'k')
    xlabel('Number of terms {\it n}')
    ylabel('{\it n}-term approximation')
    if WhichPlot==1
        title(sprintf('Approx. of cos(%0.4f) (%s)', MyAngle, NETID))
    else
        title(sprintf('Approx. of cos(%0.4f)', MyAngle))
    end
    grid on
    % Make and label the relative error plot
    WhichPlot = WhichPlot + 1;
    subplot(4,2,WhichPlot)
    bar(1:NTerms, log10(abs(RError)), 'k')
    xlabel('Number of terms')
    ylabel('log_{10}|rel error|')
    title(sprintf('Rel. Err. for cos(%0.4f)', MyAngle))
    grid on
end
%% Save to a "tall" eps file
orient tall
print -depsc CosSeriesCheckerPlot
orient portrait