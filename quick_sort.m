#Quick_Sort
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

