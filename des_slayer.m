function SL=des_slayer(E)

k=1;
r=1;
for i=1:8
    SL(r:r+3)=des_Sbox(i,E(k:k+5));
    r=r+4;
    k=k+6;
end
    