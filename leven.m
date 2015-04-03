function [x,count] = leven(b,x,A,threscount,thres,s)
% Levenberg-Marquardt method for quadratics
% here, I am interpreting that s is a scaling factor. 
count = 0;
diff = 1;
lam = 100;
diagH = diag(diag(A)); % diagonal matrix
oldy = [500000;500000];
H=A; % hessian

while diff>=thres && count<=threscount
    count = count+1;
    [grady] = grad(x,A,b); % using gradient function
    newx = x-(inv(H+lam.*diagH)*grady); % finding new x with equation
    [ y ] = quadrat(x,A,b);
    if oldy>=y % checking to see if new y is better
        x = newx;
        lam = lam./s;
        oldy=y;
    else lam = lam.*s;
    diff = norm(y-oldy);
    end
end

end

