function [x, y] = Butterfly(t)
% [Butterfly.m]
% [Cemal Yagcioglu]
% [September 24, 2016]
%
% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% Equations for x and for y in terms of t here
x = sin(t).*((exp(cos(t)))-(2.*cos(4.*t))-(sin(t./12).^5));
y = cos(t).*((exp(cos(t)))-(2.*cos(4.*t))-(sin(t./12).^5));
end