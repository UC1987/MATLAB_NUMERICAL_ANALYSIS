%assignment_9 ques4_trapezoidal method
f=@(x) (1+(2*x/(1+(1+x)^2))^2)^0.5;
a=0;
b=2;
n=8;
h = (b-a)/n;
x=0;
sum=0;
for i=1:n-1
    x=a+h*i;
    sum =sum +2*f(x);
end
sum= sum + f(a)+f(b);
ans1= sum*h/2;
fprintf("The value of integral (1+(2*x/(1+(1+x)^2))^2)^0.5 on the interval of 0 to 2 is %0.4f \n",ans1);
