function [theta] = gradientDescent(X, y, theta, alpha, iterations)
m = length(X);

for k = 1:iterations

p = 0;
for i = 1:m
p = p + ( (theta(1)+theta(2)*X(i,2)) - y(i) );
end
p = theta(1) - (alpha/(m))*p;

q = 0;
for i = 1:m
q = q + (  (theta(1)+theta(2)*X(i,2)) -y(i))*X(i,2);
end
q = theta(2) - (alpha/(m))*q;
theta(1) = p;
theta(2) = q;

end 



end







