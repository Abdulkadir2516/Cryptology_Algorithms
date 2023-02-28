function Y=dobin(K,kk)
   A=dec2bin(K,kk);
   X=find(A=='1');
   [m,n]=size(X);
   Y(1:kk)=0;
   if n > 0
      for j=1:n
         Y(X(j))=1;
      end
   else 
      Y(1:kk)=0;
   end


