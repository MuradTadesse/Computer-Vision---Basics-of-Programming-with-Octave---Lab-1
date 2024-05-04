#Search Algorithms:
function index = binary_search(arr, target)
    left = 1;
    right = length(arr);

    while left <= right
        mid = floor((left + right) / 2);
        if arr(mid) == target
            index = mid;
            return;
        elseif arr(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        endif
    endwhile

    index = -1; % Target not found
endfunction

