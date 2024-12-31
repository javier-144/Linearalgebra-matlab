function B = rightInverse(A)
    [m, n] = size(A);
    if rank(A) == m
        % A has a right inverse if its rank equals the number of its rows
        B = pinv(A);  % Using pseudoinverse as right inverse when A is full row rank
    else
        B = [];  % Return empty matrix if A doesn't have a right inverse
    end
end
