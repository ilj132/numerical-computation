function I=simp2(x,y,n)
    z=length(x)
    h=(x(z)-x(1))/n
    I=y(1)
    for i=2:n
        if modulo(i,3)==1
            I=I+2*y(i)
        else
            I=I+3*y(i)
        end
    end
    I=((3*h)/8)*(I+y(n+1))
endfunction
