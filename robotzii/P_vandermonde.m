function y_interp = P_vandermonde(coef, x_interp)
    x_interp = x_interp(:)'; 
    n = length(coef);    
    y_interp = zeros(size(x_interp));
    
    for i = 1:n
        y_interp = y_interp .* x_interp + coef(n-i+1);
    end
end
