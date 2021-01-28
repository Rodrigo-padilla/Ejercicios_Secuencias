%% función e^(-0.1+0.3j)n

n = -10:10;
a = -0.1+0.3j;

x = exp(a*n);

figure
set(gcf);
subplot(5,1,1);
stem(n,x,'g','filled');

%% magnitud de la función

m = abs(a);
xm = exp(m*n);
% xm = (m*n);

subplot(5,1,2);
stem(n,xm,'g','filled');

%% fase

f = atan2(imag(a),real(a));
xf = exp(f*n);
% xf = (f*n);

subplot(5,1,3);
stem(n,xf,'g','filled');

%% parte real

r = real(a);
xr = exp(r*n);
% xr = (r*n);

subplot(5,1,4);
stem(n,xr,'g','filled');

%% parte imaginaria

im = imag(a);
xim = exp(im*n);
% xim = (im*n);

subplot(5,1,5);
stem(n,xim,'g','filled');

