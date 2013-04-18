function [fMin2visi, vidurkis]=MonteKarloAdaptyvus(funkcija, a1, b1)

%Monte Carlo (ranroms search) metodo realizacija
%1. Sugeneruojame 100 atsitiktiniu tasku intervale [-10:10]
%2. Surandame kuriame funkcija igija didziausia(maziausia) reiksme
%rand(100,1) sugeneruoja skaicius is intervalo (,1) ir ju yra 100
%a1=-10;%pradine sritis
%b1=10;%pradine sritis
%Paleidimas pvz.
% a1=-10; b1=10; funkcija=@sincos2;
%[fMin2, VID]=MonteKarloAdaptyvus(funkcija, a1, b1)
fMin2visi=[];
for k=1:10
n=2;
k1=60;%dvimatis (Tasku (vektoriu) skaicius)
 x1=a1 + (b1-a1).* rand(60,2); %padaryti, kad generuotu dvimacius vektorius
 for i=1:60
     f1(i)=funkcija(x1(i,:));
 end
 [fMin1,indMin1]=min(f1); %lyg ir nieko nereikia keisti
% [fMax1,indMax1]=max(f1); % lyg ir nieko nereikia keisti
 xMin1=x1(indMin1,:);%pritaikyti dvimaciu atveju
% xMax1=x1(indMax1,:);%pritaikyti dvimaciu atveju
 fprintf('Surastas min = %f6.4f, taske x = (%6.4f,%6.4f)\n', fMin1, xMin1(1), xMin1(2));
% fprintf('Surastas max = %f6.4f, taske x = (%6.4f,%6.4f)\n', fMax1, xMax1(1), xMax1(2));
 hold on;
 scatter (x1(:,1),x1(:,2),'b.');
 scatter (xMin1(1), xMin1(2), 'r*');
 text (xMin1(1)+0.3,xMin1(2),num2str(fMin1));
 rectangle('Position',[-10.0,-10.0,20.0,20.0],...
     'LineWidth',5,'Linestyle','--')
 
 %grafikas1;
 %kitus bandymus atliekam mazintoje srityje
 %Monte Carlo (ranroms search) metodo realizacija
%1. Sugeneruojame 100 atsitiktiniu tasku intervale [-10:10]
%2. Surandame kuriame funkcija igija didziausia(maziausia) reiksme
%rand(100,1) sugeneruoja skaicius is intervalo (,1) ir ju yra 100
a2=xMin1(1)-1;%a2<=x(1)<=b2
b2=xMin1(1)+1;%pradine sritis
a3=xMin1(2)-1; %a3<=x(2)<=b3
b3=xMin1(2)+1;
n=2;
k2=40;%dvimatis (Tasku (vektoriu) skaicius)
if (b2>10)
    b2=10
    a2=8
end
if (a2<-10)
    a2=-10
    b2=-8
end
if (a3<-10)
    a3=-10
    b3=-8
end
if (b3>10)
    b3=10
    a3=8
end
x2(:,1)=a2 + (b2-a2).* rand(40,1); %padaryti, kad generuotu dvimacius vektorius
x2(:,2)=a3 + (b3-a3).* rand(40,1);


f2=[];
 for i=1:40
     f2(i)=funkcija(x2(i,:));
 end
 [fMin2,indMin2]=min(f2); %lyg ir nieko nereikia keisti
 %[fMax2,indMax2]=max(f2); % lyg ir nieko nereikia keisti
 xMin2=x2(indMin2,:);%pritaikyti dvimaciu atveju
 %xMax2=x2(indMax2,:);%pritaikyti dvimaciu atveju
 fprintf('Surastas min = %f6.4f, taske x = (%6.4f,%6.4f)\n', fMin2, xMin2(1), xMin2(2));
 %fprintf('Surastas max = %f6.4f, taske x = (%6.4f,%6.4f)\n', fMax2, xMax2(1), xMax2(2));
  hold on;
 scatter (x2(:,1),x2(:,2),'b.');
 scatter (xMin2(1), xMin2(2), 'g*');
 text (xMin2(1)+0.3,xMin2(2),num2str(fMin2));
 rectangle('Position',[a2,a3,2.0,2.0],...
     'LineWidth',1,'Linestyle','--')
 fMin2visi=[fMin2visi;fMin2];
%figure;
end
vidurkis = mean(fMin2visi);
 %grafikas2;
 