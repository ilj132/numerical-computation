function [L,U]= decomposicaoLU (A)
    [l,c]=size(A)
    L=eye(l,l);
    for i=1:l-1 //linha e coluna do pivô
        pivo=A(i,i);
        for j= i+1:l // linha do elemento que vamos zerar
            m=A(j,i)/pivo; //fator de multiplicação
            A(j,:)=A(j,:)-m*A(i,:); //operação pra zerar as linhas abaixo
            L(j,i)=m; //transformando a matriz identidade na matriz L
        end
    end
    U=A; //a matriz U será o resultado da matriz A
endfunction

/*function z=resret(A,b)
    [l,c]=size(A)
    for i=l:-1:1
        soma=0
        for j=i+1:c
            soma=soma +A(i,j)*x(j)
        end
        x(i)=(b(i)-soma)/A(i,i)
    end
endfunction*/
