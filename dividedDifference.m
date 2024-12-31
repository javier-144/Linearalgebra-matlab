function D = dividedDifference(X)
    n = length(X);
    D = zeros(n, n);
    D(:, 1) = 1;
    for i = 2:n
        for j = 2:i
            D(i, j) = prod(X(i) - X(1:j-1));
        end
    end
end
