%% gráfica unitaria, límites

[s,n] = stepseq(-10,-10,9);

figure
subplot(2,1,1);
stem(n,s,'r','filled');

%% multiplicación

x = [5 4 3 2 1];
y = [x x x x];

x1 = y.*s;
subplot(2,1,2);
stem(n,x1,'r','filled');
