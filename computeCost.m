%function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
  %J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
%
% You need to return the following variables correctly 
%J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

%end
function J = computeCost(X,y,theta)
jtheta = 0;
m = length(y);
for i = 1:m
jtheta = jtheta + (theta(1)+theta(2)*X(i,2) - y(i))^2;
end
J = jtheta/(2*m);
end
