%% u[n]
%limites de 0 a 20 sin desplazamiento
[s1,n] = stepseq(0,0,20);

figure
subplot(5,2,1);
stem(n,s1,'r','filled');
title('u[n]');
ylim([-0.5,1.5]);

%% u[n-10]
%limites de 0 a 20 con 10 unidades desplazadas
[s2,n] = stepseq(10,0,20);

subplot(5,2,2);
stem(n,s2,'r','filled');
title('u[n-10]');
ylim([-0.5,1.5]);

%% u[n]-u[n-10]

s3 = s1-s2;

subplot(5,2,3);
stem(n,s3,'r','filled');
title('u[n]-u[n-10]');
ylim([-0.5,1.5]);

%% n(u[n]-u[n-10])

s4 = n.*s3;

subplot(5,2,4);
stem(n,s4,'r','filled');
title('n(u[n]-u[n-10])');

%% u[n-20]
%limites de 0 a 20 con 20 unidades desplazadas
[s5,n] = stepseq(20,0,20);

subplot(5,2,5);
stem(n,s5,'r','filled');
title('u[n-20]');
ylim([-0.5,1.5]);
%% n(u[n-10]-u[n-20])

s6 = s2-s5;

subplot(5,2,6);
stem(n,s6,'r','filled');
title('n(u[n-10]-u[n-20])');
%% exponencial real 10e^(-0.3)(n-10)

init = 0;
fini = 20;

n1 = [0:20];
e = 10*exp((-0.3)*(n-10));
subplot(5,2,7);
stem(n1,e,'r','filled');
title('10e^(-0.3)(n-10)');

%% (10e^(-0.3)(n-10))*(n(u[n-10]-u[n-20]))

[s7,n2] = sigmult(e,n,s6,n1);

subplot(5,2,8);
stem(n2,s7,'r','filled');
title('10e^(-0.3)(n-10))*(n(u[n-10]-u[n-20])');
%% n(u[n]-u[n-10])+(10e^(-0.3)(n-10))*(n(u[n-10]-u[n-20]))

s8 = s4+s7;

subplot(5,2,9);
stem(n,s8,'r','filled');
title('n(u[n]-u[n-10])+(10e^(-0.3)(n-10))*(n(u[n-10]-u[n-20]))');
%% Tabla final aparte en grande
s8;
figure;
stem(n,s8,'r','filled');
title('Tabla final');

