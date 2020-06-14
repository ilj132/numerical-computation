function [s] = taylor(t0,n,t)
w0=4.986655
r=[1.7876419 0.2977991 -0.7206452]
s= r(1)+r(2)*cos(w0*t0)+r(3)*sin(w0*t0)
    
    for i=1:n-1

        if modulo(i,4)==1
            s = s+ ((-r(2)*(w0^i)*sin(w0*t0) + r(3)*(w0^i)*cos(w0*t0)) * (((t-t0)^i)/(factorial(i))))
            
        elseif modulo(i,4)==2
             s = s+ ((-r(2)*(w0^i)*cos(w0*t0)*(-r(3))*w0^i*sin(w0*t0)) * (((t-t0)^i)/(factorial(i))))
                
        elseif modulo(i,4)==3
            s = s+ ((r(2)*(w0^i)*sin(w0*t0)*(-r(3))*(w0^i)*cos(w0*t0)) * (((t-t0)^i)/(factorial(i))))
            
        elseif modulo(i,4)==0
           s = s+ ((r(2)*(w0^i)*cos(w0*t0)+r(3)*(w0^i)*sin(w0*t0)) * (((t-t0)^i)/(factorial(i))))
        end        
        
    end
endfunction

