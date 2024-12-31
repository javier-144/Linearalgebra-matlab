function [ColA, RowA, RnullA, LnullA] = fundamentalSubspaces(A)
    % Column Space: Consists of all linearly independent columns of A.
    function C = columnSpace(A)
        [~, c] = rref(A);
        C = A(:, c);
    end

    % Row Space: Comprises all non-zero rows in the reduced row echelon form (RREF) of A.
    function R = rowSpace(A)
        [Ea, ~] = rref(A);
        r = rank(A);
        R = Ea(1:r, :)';
    end

    % Null Space: Set of all vectors X for which AX = 0.
    function N = nullSpace(A)
        N = null(A, 'r');
    end

    % Left Null Space: Set of all vectors X for which A'X = 0 (using the transpose of A).
    function L = leftNullSpace(A)
        AT = A';
        L = null(AT, 'r');
    end

    % Compute each subspace for the given matrix A.
    ColA = columnSpace(A);
    RowA = rowSpace(A);
    RnullA = nullSpace(A);
    LnullA = leftNullSpace(A);
end
