function TDD=CTDD(x,y)
    n=length(x)
    TDD(:,1)=y'
    for i=1:n-1
        for j=1:n-i
        TDD(j,i+1)=(TDD(j+1,i)-TDD(j,i))/(x(j+i)-x(j))
        end
    end
endfunction

function S=newtin(x,y,p)
    n=length(x)
    S=y(1)
    TDD=CTDD(x,y)
    for i=2:n
        M=1
        for j=1:(i-1)
           M=M*(p-x(j))
        end
        S=S+TDD(1,i)*M
    end
endfunction
