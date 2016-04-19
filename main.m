%This file is to track the gps in the Caldera
data = load('margin_figure4.txt');
xdata = data(:,1);
ydata = data(:,2);
% First, build a complete plant model with u,w,v as inputs and
% y and yv as outputs:
f = fittype('a*sin(b*x)');
[fit1,gof,fitinfo] = fit(xdata,ydata,f,'StartPoint',[1 1]);