function Jac=j_func(L,X)

    N=length(L);
    Jac=modelo1_deriv(L(1),X);

    for II=2:N
        Jac=[Jac;modelo1_deriv(L(II),X)];
    end
end
