
A=[10 8 -3 1;2 10 1 -4;3 -4 10 1;2 2 -3 10];
B=[16; 9; 10; 11];
N=input('Enter the number of iterations ');
tol=0.001;
n=length(B);
X=zeros(n,1);
x0=[0;0;0;0];  % stopping Criteria

for k=1:N    % Iteration over the number of steps
    for i=1:n  % Iteration over the number of equations
        X(i)=(B(i) -A(i,1:i-1)*X(1:i-1)-A(i,i+1:n)*x0(i+1:n)) /A(i,i);
        
    end
     
  error=norm(X-x0,inf);  
    if (error<tol)
    break;
    end
x0=X;
end
X