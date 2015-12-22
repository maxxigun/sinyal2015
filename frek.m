  function [frekans]=frek(n,o)                                         %Fonksiyonlarý olustyurduk argumanlarý n(nota),o (oktav)
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %Notalarý diziye aktardým.
 n=strcmp(notalar,n);              %Fonksiyona gönderdiðimiz notayý dizi içerisinde aratýr ve buldugu notanýn indeksini 1 artýrýr
 m=find(n,1);                                                                %n dizisinde deðerinin indeksini döndürür. 
 
 
 
 
 if (nargin==0) 
       disp ('Lütfen veri giriþi yapýnýz: ') 
   else if (nargin==1) 
         if(m==13) 
             frekans=0; 
        else 
           frekans=floor(16.35*(2^4)*(2^((m-1)/12)));                       % Frekans fonksiyonu oluþturdum.  
            
         end 
     else  
         if (m==13)  
            frekans=0; 
         else frekans=floor(16.35*(2^o)*(2^((m-1)/12)));                 % Frekans formulu  
        end 
         
     end 
 end                                                                         %floor =sayýyý en yakýn deðere yuvarladýk yuvarlama kodu. 
