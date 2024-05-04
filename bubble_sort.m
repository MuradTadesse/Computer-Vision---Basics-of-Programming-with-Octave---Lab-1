#Sorting Algorithms:
function A = bubble_sort(A)
    n = length(A);
    for i = 1:n
        for j = 1:(n - i)
            if A(j) > A(j + 1)
                temp = A(j);
                A(j) = A(j + 1);
                A(j + 1) = temp;
            endif
        endfor
    endfor
endfunction

function A = merge_sort(A)
    n = length(A);
    if n <= 1
        return;
    endif

    mid = floor(n / 2);
    left = merge_sort(A(1:mid));
    right = merge_sort(A(mid + 1:n));
    A = merge(left, right);
endfunction

function C = merge(A, B)
    C = [];
    while ~isempty(A) && ~isempty(B)
        if A(1) < B(1)
            C = [C, A(1)];
            A(1) = [];
        else
            C = [C, B(1)];
            B(1) = [];
        endif
    endwhile

    if ~isempty(A)
        C = [C, A];
    endif

    if ~isempty(B)
        C = [C, B];
    endif
endfunction

function A = quick_sort(A)
    n = length(A);
    if n <= 1
        return;
    endif

    pivot = A(ceil(n / 2));
    left = [];
    right = [];
    for i = 1:n
        if A(i) < pivot
            left = [left, A(i)];
        elseif A(i) > pivot
            right = [right, A(i)];
        endif
    endfor

    A = [quick_sort(left), pivot, quick_sort(right)];
endfunction

