function [x,y]=RK2(a,b,h,y0)
    x=a:h:b
    y(1)=y0
    n=length(x)
    for i=2:n
        k1=df(x(i-1),y(i-1))
        k2=df(x(i),y(i-1)+h*k1)
        y(i)=y(i-1)+(h/2)*(k1+k2)
    end
endfunction

function r=df(x,y)
    r=
endfunction
