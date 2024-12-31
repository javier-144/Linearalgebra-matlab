function B = leftNullSpace(A)
AT = A';
r = rank(AT);
B = null(AT, 'r'); 
end

% All possible solutions to A'X = 0. Remember that the last few columns
% of Q belong in the null space