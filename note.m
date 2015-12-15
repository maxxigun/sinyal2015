
function [a,b]=note (f,dur)% fonksiyonu tanýmlýyoruz.argumanlarý f ve dur 
b=0:1/(10000000*f):dur; %zaman aralýgýný belirledik 0 dan dur'a kadar (100*f)artarak gidiyor
a=sin(2*pi*f*b);  %sinüs'ü olustrukduk               
plot(b,a);%plot ile grafigi cizdirdik.
