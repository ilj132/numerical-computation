clc
function y=taylor(x0,x,n)
    y=%e^x0;
    for i=1:n;
        y=y+((%e^x0)*(x-x0)^i)/factorial(i)
    end
endfunction
