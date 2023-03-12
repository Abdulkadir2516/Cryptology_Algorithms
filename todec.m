function M=todec(L)
% girdi: L 4 bitlik binary sayı
% çiktı: M tam sayı

% tam sayı dönüştürme işemi 1001 sayısı sağdan başlayıp 
% 1*2^0 + 0*2^1 + 0*2^2 + 1*2^3 şeklinde ilerler ve sonuç = 9 bulunur
% girdinin indexsi = i (L(i)) / üs alma kısmı ise n dir 2^n
% formül = N=N+L(i)*(2^n);

N=0;
i=1;

for n=length(L)-1:-1:0
   % N her bit hesaplandıktan sonra toplanıp bu değişkene aktarılır
   % yukarıdaki örnekte 1+0+0+8 = 9 şeklinde
   N=N+L(i)*(2^n);
   i=i+1;
end
M=N;
