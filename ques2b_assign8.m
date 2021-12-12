%ques 2_b Assignment 8_102066006
x=[-2 -1 0 1 2 ];
y=[15 1 1 3 19];
n=5;
sumofx=0;
sumofy=0;
sumofxsquare=0;
sumofxy=0;
sumofxcube=0;
 sumofx4=0;
  sumofx2y=0;
for i=1:n
    sumofx =sumofx+x(i);
    sumofy=sumofy+y(i);
    sumofxsquare=sumofxsquare+x(i)*x(i);
    sumofxcube=sumofxcube+x(i)*x(i)*x(i);
    sumofx4= sumofx4+x(i)*x(i)*x(i)*x(i);
    sumofxy=sumofxy+x(i)*y(i);
    sumofx2y= sumofx2y + x(i)*x(i)*y(i);
     end
a=[n sumofx sumofxsquare ; sumofx  sumofxsquare sumofxcube; sumofxsquare sumofxcube sumofx4];
b=[sumofy ; sumofxy ; sumofx2y];
val=a\b;
fprintf("The value of polynomial be : y=%0.2fx^2+%0.2f^x+%0.2f \n",val(3),val(2), val(1));