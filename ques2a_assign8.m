%ques 2_a Assignment 8_102066006
x=[-2 -1 0 1 2 ];
y=[15 1 1 3 19];
n=5;
sumofx=0;
sumofy=0;
sumofxsquare=0;
sumofxy=0;
for i=1:n
    sumofx =sumofx+x(i);
    sumofy=sumofy+y(i);
    sumofxsquare=sumofxsquare+x(i)*x(i);
    sumofxy=sumofxy+x(i)*y(i);
    
end
a=[n sumofx ; sumofx  sumofxsquare]
b=[sumofy ; sumofxy];
val=a\b;
fprintf("The value of polynomial be : y=%0.2fx+%0.2f \n",val(2),val(1));