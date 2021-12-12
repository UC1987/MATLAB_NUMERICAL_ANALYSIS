%assignment_9 ques3_a_composite simpson method
f=@(x) (cos(x))^2;
a=-0.25;
b=0.25;
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
fprintf("The value of integral (cos(x))^2  on the interval of -0.25 to 0.25 is %0.4f \n",ans1);
