numc = [4 3];
denc = [1 0 3.5 -4 2 6];

[numd,dend] = c2dm(numc,denc,0.00005,'zoh');

[y] = dstep(numd,dend,200+1);

x = 0:0.05:0.05*200;
figure(1)
stairs(x,y)
grid;
title('Grafico Continuo a Discreto');


[numc2,denc2] = d2cm(numd,dend,0.00005);
figure(2)
step(numc2,denc2);

