function [a,b] = note(f,vurus) %fonksiyonu tanimliyoruz.girilicek argumanlari tan�mlad�k

fs=8192;%�rnekleme frekans�

b = 0:1/fs:vurus; %zaman aral�g�





    elemanS = length(b); %% Eleman say�s�

    

    attack = linspace(0,1.5,(elemanS*2/8));

    

    decay = linspace(1.5-(0.5/(elemanS/8)),1,(elemanS/8));

    

    sustain = ones(1,(elemanS/2));

    

    relase = linspace(1-(1/(elemanS/8)),0,(elemanS/8));

    

    zarf = [attack, decay, sustain, relase];




    a = zarf .* sin(2*pi*f*b + zarf); %% zarfl� sin�s