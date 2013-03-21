%Monte Carlo (ranroms search) metodo realizacija
%1. Sugeneruojame 100 atsitiktiniu tasku intervale [-10:10]
%2. Surandame kuriame funkcija igija didziausia(maziausia) reiksme
%rand(100,1) sugeneruoja skaicius is intervalo (,1) ir ju yra 100
a=-10;
b=10;
 a + (b-a).*rand(100,1) %kiekvienai is koordinaciu dar atliekami veiksmai
 f=sincos(x)
 [fMin,indMin]=min(f) %gaunu ne tik minimalia reiksme bet ir indeksa
 [fMax,indMax]=max(f) % gaunu ne tik maximalia bet ir indeksa
 xMin=x(indMin)
 xMax=x(indMax)
 fprintf('Surastas min = %f6.4f taske x = %6.4f', fMin, xMin)
 fprintf('Surastas max = %f6.4f taske x = %6.4f', fMax, xMax)
 grafikas