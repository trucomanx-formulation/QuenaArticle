function F=f_func(L,X)

    N=length(L);
    F=modelo1(L(1),X);

    for II=2:N
        F=[F;modelo1(L(II),X)];
    end
end
