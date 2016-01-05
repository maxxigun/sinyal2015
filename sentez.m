%%
[nota,b,c]=textread('Notalar.txt','%s %s %s'); %Notalar txt de ki degerleri okur.
fs=8192;%�rnekleme Frekans� 
ds=round(fs/100); %Durma s�resi
go=round(fs/10); %Gecikme S�resi
notalar=zeros(1,fs); %�rnekleme Frekans� kadar dizi olusturduk.
a=zeros(1,length(notalar)); %0 Matrisi olu�turur.
durak=zeros(1,ds); %durma s�resi boyutunda 0 lardan dizi olu�turur.
oktav=str2num(cell2mat(b)); %Dosyadan cell okuyor double �eviriyor.
%%
   for i=1:(length(nota)) %Nota Boyutu kadar d�ng� d�nderir.
       vurus((i),1)=str2num(cell2mat(c(i,1))); %Dosyadan cell okuyor double �eviriyor.
       frekans((i),1)=frek(nota((i),1),oktav((i),1)); 
       [x,t]=note(frekans((i),1),vurus((i),1)); %�nceki note fonksiyonunu �ag�rd�k.
       notalar=[notalar durak x]; % notalar durak x diziye aktard�k.
   end 
   plot(notalar)
   %%
 notalarecho=zeros(1,(length(notalar))); %Birden notalar�n boyutuna kadar 0 dan dizi olustyurduk.
 for i=1:(length(notalar)) %Birden notalar�n boyutuna kadar for d�ng�s� olusturdk
     f=(go+i); %gecikmne s�resiyle �ste for d�ng�s�ne tan�mlad�gh�m�z i ile go yu topluyoruz.
     if f<(length(notalar)) 
     notalarecho(i)=notalar(i)*0.3+notalar(f); %notalar matirisinin her bir degerinin al�yor y�zde 30 kayd�r�yor..
     else 
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end 
 plot(notalarecho)
 %%
  normalizenotalarecho=zeros(1,(length(notalar)));%normalizasyon i�lemi
  normalizenotalarecho=notalarecho/max(abs(notalarecho));%tepe degerini 1 normali�ze eder.
  plot(normalizenotalarecho)
sound(normalizenotalarecho) %�alma i�lemi,ni yap�yor.

    