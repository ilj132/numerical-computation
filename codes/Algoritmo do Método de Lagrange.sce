function s=lag(x,p)
    n=length(x)
    y=f(x)
    s=0
    for i=1:n
        L=1
        for j=1:n
            if j<>i
                L=L*(p-x(j))/(x(i)-x(j))
            end
        end
        s=s+y(i)*L
    end
endfunction

function y=f(x)
    y=sin(x);
endfunction
