%%
[nota,b,c]=textread('Notalar.txt','%s %s %s'); %Notalar txt de ki degerleri okur.
fs=8192;%Örnekleme Frekansý 
ds=round(fs/100); %Durma süresi
go=round(fs/10); %Gecikme Süresi
notalar=zeros(1,fs); %Örnekleme Frekansý kadar dizi olusturduk.
a=zeros(1,length(notalar)); %0 Matrisi oluþturur.
durak=zeros(1,ds); %durma süresi boyutunda 0 lardan dizi oluþturur.
oktav=str2num(cell2mat(b)); %Dosyadan cell okuyor double çeviriyor.
%%
   for i=1:(length(nota)) %Nota Boyutu kadar döngü dönderir.
       vurus((i),1)=str2num(cell2mat(c(i,1))); %Dosyadan cell okuyor double çeviriyor.
       frekans((i),1)=frek(nota((i),1),oktav((i),1)); 
       [x,t]=note(frekans((i),1),vurus((i),1)); %Önceki note fonksiyonunu çagýrdýk.
       notalar=[notalar durak x]; % notalar durak x diziye aktardýk.
   end 
   plot(notalar)
   %%
 notalarecho=zeros(1,(length(notalar))); %Birden notalarýn boyutuna kadar 0 dan dizi olustyurduk.
 for i=1:(length(notalar)) %Birden notalarýn boyutuna kadar for döngüsü olusturdk
     f=(go+i); %gecikmne süresiyle üste for döngüsüne tanýmladýghýmýz i ile go yu topluyoruz.
     if f<(length(notalar)) 
     notalarecho(i)=notalar(i)*0.3+notalar(f); %notalar matirisinin her bir degerinin alýyor yüzde 30 kaydýrýyor..
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
 plot(notalarecho)
 %%
  normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon iþlemi
  normalizenotalarecho=notalarecho/max(abs(notalarecho));%tepe degerini 1 normaliþze eder.
  plot(normalizenotalarecho)
sound(normalizenotalarecho) %çalma iþlemi,ni yapýyor.

    