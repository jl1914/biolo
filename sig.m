x=-5:0.01:5;
y=1./(1+exp(-x));
yy=y(501:end)-(0.5-y(1));
yy=[yy,y(1:500)+(0.5-y(1))];
plot(x,yy)