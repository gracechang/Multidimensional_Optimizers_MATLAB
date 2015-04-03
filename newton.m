function [x,count] = newton(x,b,A,threscount,thres)
% uses newtons method for quadratic

Hi = inv(A); % this is because in this case the A matrix is hessian
count = 0;
diff = 1;

while diff>=thres && count<=threscount
    count = count+1;
    [grady] = grad(x,A,b); % using gradient function
    newx = x-Hi*grady; % finding new x
    diff = norm(newx-x);% differnece
    x = newx; % redefining x
end

end

