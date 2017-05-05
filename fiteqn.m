% clear all
% close all
% clc

fun=@(da,dm,kon,koff,x)...
(2./((kon+koff+dm*4*pi^2./(x)+da*4*pi^2./(x))-sqrt((kon+koff+4*pi^2*dm./(x)+da*4*pi^2./(x)).^2-4*(kon*da*4*pi^2./(x)+koff*dm*4*pi^2./(x)+4*pi^2*dm*da./((x).^2)))))
% (2./((kon+koff+dm*4*pi^2./(x)+da*4*pi^2./(x))-sqrt((kon+koff+4*pi^2*dm./(x)+da*4*pi^2./(x)).^2-4*(kon*da*4*pi^2./(x)+koff*dm*4*pi^2./(x)+4*pi^2*dm*da./((x).^2)))));
% (2./((kon+koff+dm*4*pi^2./(x))-sqrt((kon+koff+4*pi^2*dm./(x)).^2-4*(koff*dm*4*pi^2./(x)))));
% log(2./((kon+koff+dm*4*pi^2./exp(x)+da*4*pi^2./exp(x))-sqrt((kon+koff+4*pi^2*dm./exp(x)+da*4*pi^2./exp(x)).^2-4*(kon*da*4*pi^2./exp(x)+koff*dm*4*pi^2./exp(x)+4*pi^2*dm*da./(exp(x).^2)))));

fun2=@(da, dm, kon,koff,x)...%2./(kon+koff+dm./x-sqrt((kon+koff+dm./x).^2-4*koff*dm./x));
    2./(kon+koff+4*pi^2*dm./x-sqrt((kon+koff+4*pi^2*dm./x).^2-4*koff*4*pi^2*dm./x));
dmat=logspace(-1,4);
y=fun(.0002196,9854,567.2,0.002038,dmat);
y2=fun2(.1,1000,1000,0.01,dmat);
figure
loglog(dmat,y,'b')
%plot(dmat,y);
hold all
%loglog(dmat,y2,'r')
scatter(d2,tau)
%plot(logd2,logtau)