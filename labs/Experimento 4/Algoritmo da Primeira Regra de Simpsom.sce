function I=simp1(x,y,n)
    z=length(x)
    h=(x(z)-x(1))/n
    I=y(1)
    for i=2:n
        if modulo(i,2)==0
            I=I+4*y(i)
        else
            I=I+2*y(i)
        end
    end
    I=(h/3)*(I+y(n+1))
endfunction