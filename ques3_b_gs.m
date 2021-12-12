A=[4 1 -1 1;1 4 -1 -1;-1 -1 5 1;1 -1 1 3];
B=[-2; -1; 0; 1];

N=input('Enter the number of iterations ');

tol=0.001;
n=length(B);
X=zeros(n,1);
x0=zeros(n,1);  % stopping Criteria

for k=1:N    % Iteration over the number of steps
    for i=1:n  % Iteration over the number of equations
        X(i)=(B(i) -A(i,1:i-1)*X(1:i-1)-A(i,i+1:n)*x0(i+1:n)) /A(i,i);
        
    end
     
  error=norm(X-x0,inf);  
    if error<tol
    break;
    end
x0=X;
end
X