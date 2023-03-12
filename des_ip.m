function [Ab Ah]=des_ip(A)
% fonsiyonun çıktısınıda hem binary hemde hexedecimal olarak çıktı alıyoruz

% p bizim ip permutasyonumuz örn: permütasyondan önce 58. index sonrasında
% 1. indexe geliyor
p=[58 50 42 34 26 18 10 02 60 52 44 36 28 20 12 04 62 54 46 38 30 22 14 06 64 56 48 40 32 24 16 08 57 49 41 33 25 17 09 01 59 51 43 35 27 19 11 03 61 53 45 37 29 21 13 05 63 55 47 39 31 23 15 07];

% bu kısımda matlab bizim için binary çevirme işlemini rahatlıkla yapıyor
Ab=A(p);

% binary verilerimizi hexadecimal formata çevirme işlemi yapıyoruz
t=1;
for k=1:16
    r=todec(Ab(t:t+3));
    % binary verilerimizin dörder dörder diziye aktarıp hex karşılıklarını
    % Ah değişkenimize atıyoruz
    Ah(k)=dec2hex(r);
    t=t+4;
end
    