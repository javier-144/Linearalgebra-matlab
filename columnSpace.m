function B = columnSpace(A)
[~, c] = rref(A);
B = A(: , c);
end 

% The column space is the linearly independent columns of A
% or the nonzero rows of rref(A')
% *In this case, it's the first