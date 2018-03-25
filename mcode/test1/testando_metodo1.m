%% 1.3cm ancho 1cm alto
C=[393.0;474.6;494.0;521.0];
L=[0.377;0.310;0.300;0.292]; 
D=diag([2,4,8,16]/30);%diag(ones(1,length(C)));%diag(C.^(-2));%
addpath('funcs');

%X=[156.36364;0.00000;-23.73737];
%X=[157.77778;0.00000;-27.77778];
%X=[1.5000e+02;-7.5758e-03;-1.4646e+01];
X=[156.36364;0.00000];

F=f_func(L,X);
P=j_func(L,X);
E=(C-F)'*D*(C-F);
MINE=E
for II=1:20000
    X=X+inv(P'*D*P+0.005*eye(length(X)))*(P')*D*(C-F);

    F=f_func(L,X);
    P=j_func(L,X);

    E=(C-F)'*D*(C-F);
    if(MINE>E)
        MINE=E
    end
end

X'
F'
sqrt(E/length(L))

L=linspace(0.2,0.30,50);
alpha=2^(1/12);
CC=440*alpha^(3)*ones(1,length(L));
DD=440*alpha^(5)*ones(1,length(L));
EE=440*alpha^(7)*ones(1,length(L));
plot(L,f_func(L,X),'.-',L,CC,'-s',L,DD,'-o',L,EE,'->')


