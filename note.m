function [x,t] = note(f,vurus) %arguman� f ve vurus olan fonksiyon tan�mlad�k

fs=8192;%�rnekleme frekans�

t = 0:1/fs:(vurus-1/fs); %t yi tan�mladik

x = sin(2*pi*f*t); %sin�s olusturduk.
