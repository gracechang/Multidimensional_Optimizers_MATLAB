function [ y ] = quadrat(x,A,b)
% just returns the y for quadratic
y = -b'*x+(1/2).*x'*A*x;
end

