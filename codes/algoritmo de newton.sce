clc
function y=f(t)
    y=3*sin(t-1)+5*t-7.8;
endfunction

function y=df(t)
    y=3*cos(t-1)+5
endfunction

function [x,it]=newton(x0,n,e)
    erro=1
    it=0
    x=x0;
    while erro>e & it<n
        xa=x;
        x=xa-f(xa)/df(xa)
        erro=abs((x-xa)/x);
        it=it+1
    end
endfunction
