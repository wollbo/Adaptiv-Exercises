%% Exercise 3.1 %%

p1 = [1 -0.4 -0.7 -0.8];
p2 = [1 -0.2 -0.5 -0.6 -0.9];

K = 20;

A1 = poly(p1); A2 = poly(p2);

sigma2 = 1;

sigma2noise = 2;

w = sqrt(sigma2)*randn(K,1);
e = sqrt(sigma2noise)*randn(K,1);

x = filter(1,A1,w);
v = filter(1,A2,e);

y = x+v;


