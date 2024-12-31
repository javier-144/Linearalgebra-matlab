function B = leftInverse(A)
    [m, n] = size(A);
    if rank(A) == n
        % A has a left inverse if its rank equals the number of its columns
        B = pinv(A);  % Using pseudoinverse as left inverse when A is full column rank
    else
        B = [];  % Return empty matrix if A doesn't have a left inverse
    end
end
