function [Abr Ahr]=des_iip(A)
% fonsiyonun çıktısınıda hem binary hemde hexedecimal olarak çıktı alıyoruz

% ip bizim ip permutasyonumuzun tersi bizim des_ip fonksiyonu ile
% permutasyona soktuğuz bir metni yani şifrelediğimiz metni tekrar orijinal
% haline getiriyor
ip=[40 08 48 16 56 24 64 32 39 07 47 15 55 23 63 31 38 06 46 14 54 22 62 30 37 05 45 13 53 21 61 29 36 04 44 12 52 20 60 28 35 03 43 11 51 19 59 27 34 02 42 10 50 18 58 26 33 01 41 09 49 17 57 25];

Abr=A(ip);

t=1;
for k=1:16
    r=todec(Abr(t:t+3));
    Ahr(k)=dec2hex(r);
    t=t+4;
end










