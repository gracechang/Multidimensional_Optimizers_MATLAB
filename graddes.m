function [x,count] = graddes(x,A,b,threscount,thres);

% gradient descent fucnction for quadratics
count = 0;
r = 0.05;
diff = 1;
oldy = [10000;10000];

[ y ] = quadrat(x,A,b);


while diff>=thres && count<=threscount
    count = count+1;
    [grady] = grad(x,A,b); 
    newx = x-r*grady; % finding newx from old x and gradient
    oldy = y; 
    [ y ] = quadrat(newx,A,b); % plugging newx to get a new y
    diff = norm(y-oldy); % difference to see if threshold
    if oldy>=y 
        x = newx; 
        oldy = y; 
    else r = r/2; % making r smaller if new y is worst
    end
end

end
