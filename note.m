function [x,t] = note(f,vurus) %argumaný f ve vurus olan fonksiyon tanýmladýk

fs=8192;%örnekleme frekansý

t = 0:1/fs:(vurus-1/fs); %t yi tanýmladik

x = sin(2*pi*f*t); %sinüs olusturduk.
