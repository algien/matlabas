%x^2=[-10:0.2:10];%padaryti, kad breztu dvimate funkcija: surf, mesh komandas naudoti
%plot(x^2,sincos2(x^2)); %plot netinka
[x,y] = meshgrid (-10:0.2:10);
f=sin(x)+cos(y)
surf(x,y,f)
%x,y
%funkcija apsirasom
%sakom, kad ja bresu pagal vusus x ir y