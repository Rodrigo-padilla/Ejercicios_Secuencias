%% Impulso 1
[s1,n1] = impseq(-2,-5,5);
s1 = 2*s1;

figure
set(gcf);
subplot(3,1,1);
stem(n1,s1,'b','filled');

%% Impulso 2

[s2,n1] = impseq(4,-5,5);

set(gcf);
subplot(3,1,2);
stem(n1,s2,'g','filled');

%% Suma de impulsos

s_final = s1+s2;

set(gcf);
subplot(3,1,3);
stem(n1,s2,'black','filled');




