function E=exp_f(R)
% 32 bitlik verimizi 48 bite genişletme işlemi yapılmaktadır
% orijinal dizideki pe dizisinin indexlerine göre oluştur
% örn: r = [0101] 4 bitlik pe =[4 1 2 3 4 2] 6 bitlik sonuç = [1 0101 1] genişletilmiş hali 
% aslında orijinal dizinin her 4 bitin başına ve sonuna o dizi içerisinden bir değer yazıyoruz

pe=[32 01 02 03 04 05 04 05 06 07 08 09 08 09 10 11 12 13 12 13 14 15 16 17 16 17 18 19 20 21 20 21 22 23 24 25 24 25 26 27 28 29 28 29 30 31 32 01];

E=R(pe);