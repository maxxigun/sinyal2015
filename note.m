
function [a,b]=note (f,dur)% fonksiyonu tan�ml�yoruz.argumanlar� f ve dur 
b=0:1/(10000000*f):dur; %zaman aral�g�n� belirledik 0 dan dur'a kadar (100*f)artarak gidiyor
a=sin(2*pi*f*b);  %sin�s'� olustrukduk               
plot(b,a);%plot ile grafigi cizdirdik.
