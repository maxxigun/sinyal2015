function [frekans]=frek(n,o,odegeri)%Frekans Olu�turuldu.o(oktav),n(nota),odegeri(oktav degeri)

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalar� diziye aktard�m.
n=strcmp(notalar,n); %�ndeksi 1 artt�royr.
m=find(n,1);% n deki 1 degerini buluyor.
        if (nargin==0) %hi� bir deger girilmediyse a�ag�daki kodlar� cal�st�r�yor.
                 disp ('veri giri�i yap:');
        elseif (nargin==1)%tek deger girdiyse a�agadaki kodlar� �al��t�ryor.
                 if (m==13)% sus sa Frekans 0 olur.
                    frekans=0;
                else 
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%Frekans� hesaplar.
                 end
        elseif (nargin==2) %iki deger girilmediyse a�ag�daki kodlar� cal�st�r�yor..
                 if (m==13)%sus sa Frekans 0 olur.
                    frekans=0;
                 else
                    frekans=16.35*(2^(o))*(2^((m-1)/12)); %Frekans hesaplar.
                 end
        else 
                 if (m==13)%sus sa Frekans 0 olur
                     frekans=0;
                 else
                     frekans=16.35*(2^(o+odegeri))*(2^((m-1)/12)); %Frekans hesaplar.
                 end


    end

end 
   


