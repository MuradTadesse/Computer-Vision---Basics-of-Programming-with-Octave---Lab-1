#Merge Sort
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


function C = merge(left, right)
    C = [];
    while ~isempty(left) && ~isempty(right)
        if left(1) < right(1)
            C = [C, left(1)];
            left(1) = [];
        else
            C = [C, right(1)];
            right(1) = [];
        endif
    endwhile

    if ~isempty(left)
        C = [C, left];
    endif

    if ~isempty(right)
        C = [C, right];
    endif
endfunction

