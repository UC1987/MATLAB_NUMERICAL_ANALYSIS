%assignment 6_UTKARSH CHAUHAN


a=[4 1 0; 1 20 1; 1 0 1];
x=[1 ; 1 ;1];
b=a;
mxerror=0.001;
error=100000;
lambda=Inf;
while all(error>mxerror)
    px=x;
    y=a*x;
    k=max(abs(y));
    eigvec=y./k;
    x=eigvec;
    error=abs(sum(px-x));
    lambda=k;
end
fprintf('the largest eigen value is %0.4f\n',lambda);
fprintf('the eigen vector is');
x
    

