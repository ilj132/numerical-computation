clc
function [x,cont]=jacobi(A,b,x0,e)
    [l,c]=size(A);
    erro=1
    while erro>e
        xa=x;
        cont=cont+1
        for i=1:l;
            soma=0
            for j=1:l;
                if i~=j
                    soma=soma+A(i,j)*x(j);
                end
            end
            x(i)=(b(i)-soma)/A(i,i);
        end
        erro=max(abs(x-xa))/max(abs(x));
    end
endfunction
