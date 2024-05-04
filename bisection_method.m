#Numerical Methods:
function root = bisection_method(func, a, b, tol)
    if func(a) * func(b) > 0
        error("Function has same signs at endpoints.");
    endif

    while (b - a) / 2 > tol
        c = (a + b) / 2;
        if func(c) == 0
            break;
        elseif func(c) * func(a) < 0
            b = c;
        else
            a = c;
        endif
    endwhile

    root = (a + b) / 2;
endfunction

