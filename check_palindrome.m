#String Manipulation:

function is_palindrome = check_palindrome(str)
    str = lower(str);
    str = strrep(str, " ", ""); % Remove spaces
    n = length(str);
    for i = 1:ceil(n/2)
        if str(i) != str(n - i + 1)
            is_palindrome = false;
            return;
        endif
    endfor
    is_palindrome = true;
endfunction

