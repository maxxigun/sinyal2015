function [a]=frek(n,o) %fonksiyon olusturduk.girilecek degerler nota(n) ve oktav(o)
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'};     %notalar� diziye koyduk
b=strcmp(notalar,n); %ustte girilen notay� dizilerde buluyor.alttak� c=find(b,1) indeksini buluyor ve formulu ekliyor                                                    
c=find(b,1); %girilen notan�n indeksini buluyor                   
a=round(16.35*(2^o)*(2^((c-1)/12)));%say� cok uzun c�kt�g� icin round ile en yakin tam sayiya yuvarladik.