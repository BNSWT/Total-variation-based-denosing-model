function f = FFTsolutionofL2norm(dx,dy,v,lambda)
%the solution of min{1/2int(gradient u-d)^2+lambda/2int(u-v)^2}
   sizev = size(v);
   otfDx = psf2otf([-1,1],sizev);
   otfDy = psf2otf([-1;1],sizev);
 Nomin = lambda*fft2(v)+conj(otfDx).*fft2(dx)+conj(otfDy).*fft2(dy);
%  size(lambda*fft2(v))
%  size(conj(otfDx))
%  size(dx)
%  size(fft2(dx))
Denom = abs(otfDx).^2 + abs(otfDy ).^2+lambda;
          s = Nomin./Denom;
           f = real(ifft2(s))/255;
end