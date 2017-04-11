function [m,b] =liner(x,y)

sx = sum(x);
sy = sum(y);
sxy = sum(x.*y);
sxx = sum(x.*x);

xb = mean(x);
yb = mean(y);

m = (sxy - sx*yb)/(sxx - sx*xb);
b = yb - m*xb;

return

