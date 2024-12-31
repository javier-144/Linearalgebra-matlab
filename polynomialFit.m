function P = polynomialFit(X, Y, degree)
%will regress 2 variables X and Y finding the best fit nth degree
%polynomial
   V = vander(X);
   V = V(:,end-degree+1:end);
   P = inv(V'*V)*V'*Y