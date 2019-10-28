numc = [4 -20]
denc = [25 -3 30]

figure(1)
step(numc,denc,20)
title('Respuesta al escalon continuo');

[numd,dend] = c2dm(numc,denc,0.1,'zoh');

[y] = dstep(numd,dend,200+1);

x = 0:0.1:0.1*200;
figure(2)
stairs(x,y)
title('Respuesta al escalon discreto con muestreo 0.1');

[numd2,dend2] = c2dm(numc,denc,0.5,'zoh');

[y2] = dstep(numd2,dend2,100+1);

x2 = 0:0.5:0.5*100;
figure(3)
stairs(x2,y2)
title('Respuesta al escalon discreto con muestreo 0.5');

[numc2,denc2] = d2cm(numd,dend,0.1);

figure(4)
step(numc2,denc2,20);
title('Respuesta al escalon discreta a continuo');