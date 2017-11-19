function qout = Charge(t, q0, R, L, C)
% I understand and have adhered to all the tenets of the Duke
% Community Standard in completing every part of this assignment.  I
% understand that a violation of any part of the Standard on any part
% of this assignment can result in failure of this assignment, failure
% of this course, and/or suspension from Duke University.

%% Error checking

if nargin<5
   error('Not enough inputs!')
elseif isscalar(q0)==0 || isscalar(R)==0 || isscalar(L)==0 || isscalar(C)==0
    error('Non-scalar constants!')
end

%% Calculation


qout = q0.*exp((-R.*t)./(2.*L)).*cos(t.*sqrt((1./(L.*C))-(((R)./(2.*L)).^2)))


end