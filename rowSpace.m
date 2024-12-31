function B = rowSpace(A)
[Ea, ~] = rref(A);
r = rank(A);
B = Ea(1:r , :)';
end 

% The row space is the linearly independent rows of A
% or the nonzero rows of rref(A)
% *In this case, it's the second