#Matrix Operations:

function C = matrix_multiplication(A, B)
    [m, n] = size(A);
    [p, q] = size(B);

    if n != p
        error("Inner matrix dimensions must agree.");
    endif

    C = zeros(m, q);

    for i = 1:m
        for j = 1:q
            for k = 1:n
                C(i, j) += A(i, k) * B(k, j);
            endfor
        endfor
    endfor
endfunction

#A = [1, 2, 3; 4, 5, 6];
#>> B = [7, 8; 9, 10; 11, 12];
#>> C = matrix_multiply(A, B);
#>> disp(C);
 #   58    64
  # 139   154

