function [t,d,v]=euler2(a,b,h,d0,v0)
    t=a:h:b
    d(1)=d0
    v(1)=v0
    n=length(t)
    for i=2:n
        d(i)=d(i-1)+h*df(t(i-1),d(i-1),v(i-1))
        v(i)=v(i-1)+h*df2(t(i-1),d(i-1),v(i-1))
    end
endfunction

function a=df(t,d,v)
    a=v
endfunction

function r=df2(t,d,v)
    K=5/7;
    g=25634.7
    teta=0.0913
    r=-K*g*sin(teta)
endfunction
