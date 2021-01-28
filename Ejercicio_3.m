n = [0:50];
x1= cos(0.04*pi*n);
x2 = 0.2*randn(size(n));

x = x1 + x2;

figure
stem(n,x,'g','filled');
grid on;