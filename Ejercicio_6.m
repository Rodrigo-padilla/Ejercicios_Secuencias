%% función original x(n)
n1 = -2:10;
x1 = [1 2 3 4 5 6 7 6 5 4 3 2 1];

figure
subplot(6,1,1)
stem(n1,x1,'b','filled');
grid on
xlim([-11,13]);

%% -x[n]

[x2,n2] = sigfold(x1,n1);

subplot(6,1,2)
stem(n2,x2,'b','filled');
grid on
xlim([-11,13]);

%% -x[n-3]

[x3,n3] = sigshift(x2,n2,3);

subplot(6,1,3)
stem(n3,x3,'b','filled');
grid on
xlim([-11,13]);

%% x[n-2]

[x4,n4] = sigshift(x1,n1,2);

subplot(6,1,4)
stem(n4,x4,'b','filled');
grid on
xlim([-11,13]);

%% x[n]*x[n-2]

[x5,n5] = sigmult(x1,n1,x4,n4);

subplot(6,1,5)
stem(n5,x5,'b','filled');
grid on
xlim([-11,13]);

%% -x[n-3]+x[n]*x[n-2]

[xf,nf] = sigadd(x3,n3,x5,n5);

subplot(6,1,6)
stem(nf,xf,'b','filled');
grid on
xlim([-11,13]);









