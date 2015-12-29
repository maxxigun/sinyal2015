function [frekans]=frek(n,o,odegeri)%Frekans Oluþturuldu.o(oktav),n(nota),odegeri(oktav degeri)

notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalarý diziye aktardým.
n=strcmp(notalar,n); %Ýndeksi 1 arttýroyr.
m=find(n,1);% n deki 1 degerini buluyor.
        if (nargin==0) %hiç bir deger girilmediyse aþagýdaki kodlarý calýstýrýyor.
                 disp ('veri giriþi yap:');
        elseif (nargin==1)%tek deger girdiyse aþagadaki kodlarý çalýþtýryor.
                 if (m==13)% sus sa Frekans 0 olur.
                    frekans=0;
                else 
                    frekans=16.35*(2^(4))*(2^((m-1)/12));%Frekansý hesaplar.
                 end
        elseif (nargin==2) %iki deger girilmediyse aþagýdaki kodlarý calýstýrýyor..
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
   


