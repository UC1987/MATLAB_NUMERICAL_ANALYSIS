%ques 3 assignment7_102066006
x=[2 3 4 5];
y=[27.8 62.1 110 161];
n=4;
sumofx=0;
sumofy=0;
sumofxsquare=0;
sumofxy=0;
for i=1:n
    sumofx =sumofx+log10(x(i));
    sumofy=sumofy+log10(y(i));
    sumofxsquare=sumofxsquare+log10(x(i))*log10(x(i));
    sumofxy=sumofxy+log10(x(i))*log10(y(i));
    
end

a=[n sumofx ; sumofx  sumofxsquare];
b=[sumofy ; sumofxy];
val=a\b;
fprintf("The value of polynomial be : y=%0.2fx^%0.2f\n",10^(val(1)),(val(2)));

