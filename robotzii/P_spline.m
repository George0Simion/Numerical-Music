function y_interp = P_spline(coef, x, x_interp)
    n = length(x) - 1;
    m = length(x_interp);
    y_interp = zeros(m, 1);
    
    for j = 1:m
        xi = x_interp(j);
        
        i = find(x <= xi, 1, 'last');
        
        if i == n + 1
            i = n;
        end
        
        h = xi - x(i);
        
        index = 4 * (i - 1) + 1;
        a = coef(index);
        b = coef(index + 1);
        c = coef(index + 2);
        d = coef(index + 3);
        
        y_interp(j) = a + b * h + c * h^2 + d * h^3;
    end
end
