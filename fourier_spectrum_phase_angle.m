A = imread('cameraman.tif');
ft = fftshift(fft2(A));
logshift = 1 + log(abs(ft));
phase = angle(ft);

F_Mag = abs(ft); %magnitude only , 0 phase
F_Phase = cos(angle(ft)) + j *(sin(angle(ft))); % mgnitude 1, same phase as F
I_Mag = 1+log(ifft2(F_Mag));
I_Phase = 1+log(ifft2(F_Phase));
I_Full = abs(ifft2(ft));
subplot(2,2,1);imshow(A);title('Original');
subplot(2,2,2);imshow(I_Mag,[]);title('Fourier Spectrum');
subplot(2,2,3);imshow(I_Phase,[]);title('Phase Angle');
subplot(2,2,4);imshow(I_Full,[]);title('All components');