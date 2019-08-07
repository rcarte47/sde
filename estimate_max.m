dt=.01;
x0=0;
tf=1;
t=0:dt:tf;
iter=1000000;
rng('shuffle');
bbm=zeros(1,iter);

for i=1:iter
 bbm(i)=maxbb(x0,tf,dt,t);
end
m=mean(bbm);
histogram(bbm)