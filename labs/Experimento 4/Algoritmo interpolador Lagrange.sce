function S=lag(x,y,p)
    n=length(x)
    S=0
    for i=1:n
        L=1
        for j=1:n
            if j<>i
                L=L*(p-x(j))/(x(i)-x(j))
            end
        end
        S=S+y(i)*L
    end
endfunction
