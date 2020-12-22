function [xs,ys] = shrink2anisotropic(x,y,lambda)
xs = max(0, abs(x)-lambda).*sign(x);
ys = max(0, abs(y)-lambda).*sign(y);
