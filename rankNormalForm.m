function [P, Q, R] = rankNormalForm(A)
    % Find the size of A
    [m, n] = size(A);
    
    % Find the row operation matrix P
    Ea_P = rref([A eye(m)]);
    P = Ea_P(:, n+1:end);
    
    % Find the row-reduced form of A and P
    EA = Ea_P(:, 1:n);
    
    % Find the column operation matrix Q
    NT_QT = rref([EA' eye(n)]);
    Q = NT_QT(:, m+1:end)';
    
    % Calculate R = PAQ
    R = P * A * Q;
end
