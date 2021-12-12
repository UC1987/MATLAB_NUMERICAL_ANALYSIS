%assignment_9 ques3_b_composite simpson method
f=@(x) exp(-x^2)*cos(x);
a=-1;
b=1;
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
fprintf("The value of integral  exp(-x^2)*cos(x) on the interval of -1 to 1 is %0.4f \n",ans1);
