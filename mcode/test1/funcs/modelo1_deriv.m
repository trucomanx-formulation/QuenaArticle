function jac=modelo1_deriv(l,X)
    if length(X)<2
        error('The second variable should have 2 elements.');
    end
    jac=[1.0/(l+X(2)),-X(1)/(l+X(2))^2];
end
