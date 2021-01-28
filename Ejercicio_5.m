%% función original
n1 = -2:10;
x1 = [1 2 3 4 5 6 7 6 5 4 3 2 1];

figure
subplot(4,1,1)
stem(n1,x1,'b','filled');
grid on
xlim([-7,16]);

%%  2x[n-5]
[x2,n2] = sigshift(x1,n1,5);

x3= 2.*x2;
subplot(4,1,2);
stem(n2,x3,'b','filled');
grid on;
xlim([-7,16]);

%% 3x[n+4]

[x4,n3] = sigshift(x1,n1,-4);

x5= -3.*x4;
subplot(4,1,3);
stem(n3,x5,'b','filled');
grid on;
xlim([-7,16]);

%% 2x[n-5]-3x[n+4]

[xf,nf] = sigadd(x3,n2,x5,n3);

subplot(4,1,4);
stem(nf,xf,'b','filled');
grid on;
xlim([-7,16]);


