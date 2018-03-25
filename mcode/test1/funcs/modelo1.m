function f=modelo1(l,X)
    if length(X)<2
        error('The second variable should have 2 elements.');
    end
    f=X(1)/(l+X(2));
end
