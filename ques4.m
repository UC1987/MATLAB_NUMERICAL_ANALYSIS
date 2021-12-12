
A=[4.63 -1.21 3.22 ;-3.07 5.48 2.11 ;1.26 3.11 4.57];
B=[2.22; -3.17; 5.11];

N=input('Enter the number of iterations ');


tol=0.001;
n=length(B);

X=zeros(n,1);
x0=zeros(n,1); 

for k=1:N    % Iteration over the number of steps
    for i=1:n  % Iteration over the number of equations
        X(i)=(B(i)-A(i,1:i-1)*X(1:i-1)-A(i,i+1:n)*x0(i+1:n)) /A(i,i);
        
    end
     
    error=norm(X-x0,inf);  
    if error<tol
    break;
    end
    x0=X;

end
X
 