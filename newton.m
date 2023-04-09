f= @ (x) x-cos(x);
fp= @ (x) 1+ sin(x);
z=newton1(f,fp,1,1e-5,30);
disp(z);

function r=newton1(f,fp,x0,tol,n)
iter=0;
while (iter<n)
    x1=x0-f(x0)/fp(x0);
    if(abs(x0-x1) / abs(x1) < tol )
        break;
    end
    x0=x1;
    iter=iter+1;
end
r=x1;
end