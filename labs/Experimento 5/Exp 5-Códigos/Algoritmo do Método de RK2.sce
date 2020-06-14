function [t,d,v]=RK2(a,b,h,d0,v0)
    t=a:h:b
    d(1)=d0
    v(1)=v0
    n=length(t)
    for i=2:n
        k1d=df(t(i-1),d(i-1),v(i-1))
        k1v=df2(t(i-1),d(i-1),v(i-1))
        
        k2d=df(t(i),d(i-1)+h*k1d,v(i-1)+h*k1v)
        k2v=df2(t(i),d(i-1)+h*k1d,v(i-1)+h*k1v)
        
        d(i)=d(i-1)+(h/2)*(k1d+k2d)
        v(i)=v(i-1)+(h/2)*(k1v+k2v)
    end
endfunction

function j=df(t,d,v)
    j=v
endfunction

function k=df2(t,d,v)
    K=5/7;
    g=25634.7
    teta=0.0913
    k=-K*g*sin(teta)
endfunction
