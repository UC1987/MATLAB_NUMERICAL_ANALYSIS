%ques 4 Assignment 8_102066006
x=[0.1 0.2 0.4 0.5 1 2]
y=[21 11 7 6 5 6];
n=6;
sy=0;
sxrx=0;
srx=0;
srix=0;
sxy=0;


for i=1:n
    sy=sy+y(i);
    sxrx=sxrx + x(i)*x(i)^0.5;
    srx=srx + x(i)^0.5;
    srix= srix + x(i)^-1;
    sxy=sxy+ x(i)*y(i);
end

a=[srx srix ;sxrx n];
b=[sy ; sxy];
ans=a\b;
fprintf("The value of polynomial be : y=%0.2fx^0.5 + %0.2f/x \n ",ans(1),ans(2));