clear

%Hk='0101010101010101'; %Gizli anahtar-1
%Ha='95F8A5E5DD31D900'; %Açýk metin-1.1
%Ha='166B40B44ABA4BD6'; %Açýk metin-1.2

%Hk='0101010101010102'; %Gizli anahtar-2
%Ha='0000000000000000'; %Açýk metin-2

Hk='1C587F1C13924FEF'; %Gizli anahtar-3
Ha='305532286D6F295A'; %Açýk metin-3
% test=63FAC0D034D9F793



K=[];A=[];
for i=1:16
    t=hex2dec(Hk(i));
    K=[K dobin(t,4)];
    t=hex2dec(Ha(i));
    A=[A dobin(t,4)];    
end

[KTh KT]=des_key(K);

[Ab Ah]=des_ip(A);

L(1,:)=Ab(1:32);
R(1,:)=Ab(33:64);

for i=1:15
    L(i+1,:)=R(i,:);
    R(i+1,:)=xor(L(i,:),des_f(R(i,:),KT(i,:)));
end
Lp=R(16,:);
Rp=xor(L(16,:),des_f(R(16,:),KT(16,:)));
Pre=[Rp Lp];
[Cb Ch]=des_iip(Pre);
Ch


