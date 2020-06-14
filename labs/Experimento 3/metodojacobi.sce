function [x,cont]=jacobi(A,b,x0,e)
    [l,c]=size(A) //definindo o tamanho da matriz A
    erro=1;
    x=x0; //definindo que o vetor x vai começar pelo vetor solução dado
    cont=0;
    while erro>e // vai repetir até a precisão pedida ser atendida
        xa=x; // salvando o valor anterior de x
        cont=cont+1;
        for i=1:l //começando da primeira linha até a última
            soma=0 //variável que vai "passar" pro outro lado
            for j=1:l //começando da primeira coluna até a última
                if j<>i //isso significa que só passaremos pra somar no outro outro lado da equação os termos que não sejam da diagonal principal
                    soma=soma+A(i,j)*xa(j);
                end
            end
            x(i)=(b(i)-soma)/A(i,i); //calculando o valor de cada x
        end
        erro=max(abs(x-xa))/max(abs(x)); // vai pegar o valor máximo do vetores
    end
endfunction
