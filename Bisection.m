% Bisections method in the hypothesis of the Bolzano theorem

function[x, nit, res] = Bisection(f, a, b, tol, maxIter)

    nit = 0;
    x = .5*(a+b); % Division of the interval
    fa = f(a);
    fx = f(x);
    err = b-x; % Error calculation
    res = [];
    
    if fa*f(b) > 0 % Hypothesis verification of the Bolzano theorem
    
        fprintf("ERROR: Ipotesi non rispettate \n")
        nit = 100;
    end
    while err > tol && nit < maxIter
    
        res(end + 1, 1) = abs(fx);

        fprintf('%i \t%1.10f \t  %.2e \t  %.2e\n', nit, x, err, res(end))
        if fa*fx < 0 
    
            b = x;
        else
    
            a = x;
            fa = fx;
        end
    
        x = .5*(a+b);
        fx = f(x);
        nit = nit+1;
        err = b-x;
    end