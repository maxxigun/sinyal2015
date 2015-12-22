  function [frekans]=frek(n,o)                                         %Fonksiyonlar� olustyurduk argumanlar� n(nota),o (oktav)
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %Notalar� diziye aktard�m.
 n=strcmp(notalar,n);              %Fonksiyona g�nderdi�imiz notay� dizi i�erisinde arat�r ve buldugu notan�n indeksini 1 art�r�r
 m=find(n,1);                                                                %n dizisinde de�erinin indeksini d�nd�r�r. 
 
 
 
 
 if (nargin==0) 
       disp ('L�tfen veri giri�i yap�n�z: ') 
   else if (nargin==1) 
         if(m==13) 
             frekans=0; 
        else 
           frekans=floor(16.35*(2^4)*(2^((m-1)/12)));                       % Frekans fonksiyonu olu�turdum.  
            
         end 
     else  
         if (m==13)  
            frekans=0; 
         else frekans=floor(16.35*(2^o)*(2^((m-1)/12)));                 % Frekans formulu  
        end 
         
     end 
 end                                                                         %floor =say�y� en yak�n de�ere yuvarlad�k yuvarlama kodu. 
