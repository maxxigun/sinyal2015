function [a]=frek(n,o) %fonksiyon olusturduk.girilecek degerler nota(n) ve oktav(o)
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalarý diziye koyduk
b=strcmp(notalar,n); %ustte girilen notayý dizilerde buluyor.alttakþ c=find(b,1) indeksini buluyor ve formulu ekliyor                                                    
c=find(b,1); %girilen notanýn indeksini buluyor                   
a=round(16.35*(2^o)*(2^((c-1)/12)));%sayý cok uzun cýktýgý icin round ile en yakin tam sayiya yuvarladik.