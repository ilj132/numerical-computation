function y=f(x)
    y=x.*cos(x)
endfunction

function I=trap(x,h)
    n=(x(length(x))-x(1))/h
    x=a:h:b
    y=f(x)
    I=y(1)
    for i=2:n
        I=I+2*y(i)
    end
    I=h/2*(I+y(n+1))
endfunction
