function F=des_f(R,K)

E=exp_f(R);
T=xor(E,K);
SL=des_slayer(T);
F=perm_f(SL);
