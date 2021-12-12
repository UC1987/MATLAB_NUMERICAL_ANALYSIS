%assignment_9 ques3_b_composite simpson method
f=@(x) 1/(x*log(x));
a=exp(1);
b=exp(1)+1;
n=6;
h = (b-a)/n;
X=0;
sum=0;
for i=1:n-1
    X=a+h*i;
    if rem(i,2)==0
    sum =sum +2*f(X);
    else
     sum =sum +4*f(X);   
    end
    end
 sum= sum + f(a)+f(b);
ans1= sum*h/3;
fprintf("The value of integral  1/(x*log(x)) on the interval of e to e+1 is %0.4f \n",ans1);
