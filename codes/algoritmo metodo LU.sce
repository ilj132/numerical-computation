clc
function [L,U]=metodoLU(A)
    [l,c]=size(A)
    L=eye(l,l);
    for i=1:l-1
        pivo=A(i,i);
        for j= i+1:l
            m=A(j,i)/pivo;
            A(j,:)=A(j,:)-m*A(i,:);
            L(j,i)=m;
        end
    end
    U=A;
endfunction
