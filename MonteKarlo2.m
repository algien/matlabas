%Monte Carlo (ranroms search) metodo realizacija
%1. Sugeneruojame 100 atsitiktiniu tasku intervale [-10:10]
%2. Surandame kuriame funkcija igija didziausia(maziausia) reiksme
%rand(100,1) sugeneruoja skaicius is intervalo (,1) ir ju yra 100
a=-10;
b=10;
n=2;
k=100;%dvimatis
 x=a + (b-a).* rand(k,2) %padaryti, kad generuotu dvimacius vektorius
 for i=1:k
 f(i)=sincos2(x(i,:))
 end
 [fMin,indMin]=min(f); %lyg ir nieko nereikia keisti
 [fMax,indMax]=max(f); % lyg ir nieko nereikia keisti
 xMin=x(indMin,:);%pritaikyti dvimaciu atveju
 xMax=x(indMax,:);%pritaikyti dvimaciu atveju
 fprintf('Surastas min = %f6.4f, taske x = (%6.4f,%6.4f)\n', fMin, xMin(1), xMin(2))
 fprintf('Surastas max = %f6.4f, taske x = (%6.4f,%6.4f)\n', fMax, xMax(1), xMax(2))
 grafikas2