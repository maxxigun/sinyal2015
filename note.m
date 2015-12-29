function[e,q]=note(frekans,vurus)%sinyali �izer.
    fs=8192;%�rneklenme tan�mlad�m.
    q=0:1/fs:vurus-(1/fs); 
       a=length(q);
    hk=[1 0.8 0.4 0.1]; %harmonik katsay�l�ar� dizeye atad�m.
        b=length(hk); %hk dizisinin boyut belirler.
        e=zeros(1,a); %0 matrisi olusturur.
        for i=1:b %1 den hk dizisi boyutuna kadar bir dizi olusturur.
            e=e+(hk(i)*sin(2*pi*(i*frekans)*q)); % harmonikleri ekledik.
        end
A=linspace(0,1.5,a/4);%vekt�rleri olusturdum.
B=linspace(1.5,1,a/8);%vekt�rleri olusturdum.
C=linspace(1,1,a/2);%vekt�rleri olusturdum.
D=linspace(1,0,a/8);%vekt�rleri olusturdum.
 zarf=[A B C D];%�stteki vekt�rleri diziye at�yoruz.
 e=e.*zarf;% Zarflama i�lemi yap�yoruz.
 