function B = nullSpace(A) 
r = rank(A);
B = null(A, 'r'); 
end

% All possible solutions to AX = 0. Remember that the last few columns
% of Q belong in the null space