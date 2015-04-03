function [grady] = grad(x,A,b)
% gives gradient
grady1 = -b(1)+(1/2).*(2.*A(1,1)*x(1)+A(1,2)*x(2)+A(2,1)*x(2));
grady2 = -b(2)+(1/2).*(A(1,2)*x(1)+A(2,1)*x(1)+2.*A(2,2)*x(2));
grady = [grady1;grady2];

end