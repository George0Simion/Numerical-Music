function coef = spline_c2(x, y)
    n = length(x) - 1;
    h = diff(x);
    a = y(1:end-1);

    A = zeros(n + 1);
    b = zeros(n + 1, 1);
    
    A(1,1) = 1;
    A(n+1,n+1) = 1;
    b(1) = 0;
    b(n+1) = 0;

    for i = 2:n
        A(i, i-1) = h(i-1);
        A(i, i) = 2 * (h(i-1) + h(i));
        A(i, i+1) = h(i);
        b(i) = 3 * ((y(i+1) - y(i)) / h(i) - (y(i) - y(i-1)) / h(i-1));
    end

    c = A \ b;

    b_i = zeros(n, 1);
    d_i = zeros(n, 1);

    for i = 1:n
        b_i(i) = (y(i+1) - y(i)) / h(i) - h(i) * (2*c(i) + c(i+1)) / 3;
        d_i(i) = (c(i+1) - c(i)) / (3 * h(i));
    end

    coef = zeros(4*n, 1);
    for i = 1:n
        coef(4*i-3) = a(i);
        coef(4*i-2) = b_i(i);
        coef(4*i-1) = c(i);
        coef(4*i) = d_i(i);
    end
end
