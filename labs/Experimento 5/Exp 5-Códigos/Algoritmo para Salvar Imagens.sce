    n = 11 ; //numero de imagens salvas 
 
    for i=1:n  
        nome = 'C:\Users\Isaac de Lyra Jr\Downloads\prints-20190616T040115Z-001\prints\'+string(i)+'.jpg'; 
        img = imread(nome);     
        figure();
        matplot(img,'f')    
        x = x0 - cos(a)*d(w*(i-1)+1)
        y = y0 + sin(a)*d(w*(i-1)+1)    
        plot(x,y,'.','markersize',20)   
        xs2jpg(gcf(),'r2' + string(i) +'.jpg',1);
        sleep(500)  
    end
