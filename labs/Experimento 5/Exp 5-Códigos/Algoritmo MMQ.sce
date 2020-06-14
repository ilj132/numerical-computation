function a=mmq(t,pos,k)
    n=length(t)
    for i=1:n //linhas
        for j=1:k+1
            v(i,j)=t(i)^(j-1)
        end
    b(i)=pos(i)
end
a=inv(v'*v)*(v'*b)
endfunction
