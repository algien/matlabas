function fsincos2=sincos(x);
% Grazina funkcijos f=sin(x(1))+cos(x(2)) reiksme
%paleidimas: f=sincos2(x), kur x vienmatis vektosius.
%Pvz. f=sincos(1.0);
% PVZ. f=sincos2([1.0,1.0])
%Leistinoji sritis (poaibis apibrezimo srities): [-10;10]^2 arba
%([-10;10]);([-10;10])
fsincos2=sin(x(1))+cos(x(2))
end