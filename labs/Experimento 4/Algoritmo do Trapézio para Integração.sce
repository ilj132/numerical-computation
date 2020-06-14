function I=trap(x,y,n)
    z=length(x)
    h=(x(z)-x(1))/n
    I=y(1)
    for i=2:n
        I=I+2*y(i)
    end
    I=(h/2)*(I+y(n+1))
endfunction
