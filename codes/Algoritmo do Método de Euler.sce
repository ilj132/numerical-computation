function [x,y,z]=euler2(a,b,h,y0,z0)
    x=a:h:b
    y(1)=y0
    z(1)=z0
    n=length(x)
    for i=2:n
        y(i)=y(i-1)+h*df(x(i-1),y(i-1),z(i-1))
        z(i)=z(i-1)+h*df2(x(i-1),y(i-1),z(i-1))
    end
endfunction

function a=df(x,y,z)
    a=z
endfunction

function r=df2(x,y,z)
    r=sin(y)
endfunction
