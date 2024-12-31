function [ColA, RowA, RnullA, LnullA] = orthonormalSubspaces(A)
    % Orthonormal basis for Column Space: Using the orth function on A.
    function C = orthonormalColumnSpace(A)
        C = orth(A);
    end

    % Orthonormal basis for Row Space: Using the orth function on A'.
    function R = orthonormalRowSpace(A)
        R = orth(A')';
    end

    % Orthonormal basis for Null Space: Use the null function with 'r' and then orthogonalize.
    function N = orthonormalNullSpace(A)
        basicNullSpace = null(A, 'r');
        N = orth(basicNullSpace);  % Orthogonalizes but should already be orthonormal.
    end

    % Orthonormal basis for Left Null Space: Use the null function on A' with 'r' and then orthogonalize.
    function L = orthonormalLeftNullSpace(A)
        basicLeftNullSpace = null(A', 'r');
        L = orth(basicLeftNullSpace);  % Orthogonalizes but should already be orthonormal.
    end

    % Compute each orthonormal subspace for the given matrix A.
    ColA = orthonormalColumnSpace(A);
    RowA = orthonormalRowSpace(A);
    RnullA = orthonormalNullSpace(A);
    LnullA = orthonormalLeftNullSpace(A);
end
