%assignment 7_102066006

x=[0 0.25 0.5 0.75];
y=[1 ; 1.64872 ;2.71828; 4.4816];
X=input("Enter the value of x in which you need a function value:");
   n=4;          
dd=zeros(n,n);
dd(:,1)=y;

for i=2:n
    for j=i:n
num=dd(j,i-1)-dd(j-1,i-1);
den=x(j)-x(j-i+1);
dd(j,i)=num./den;
        
    end
end
for i=1:n
    p(i)=1;
    for j=1:i-1
        p(i)=p(i)*(X-x(j));
    end
end
sum=0;
for i=1:n
sum=sum+(dd(i,i)*p(i))   
end
fprintf("the approx value at x =%f is %f\n",X,sum);

