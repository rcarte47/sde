t0=0;
x0=0;
dt=.001;
dx=.001;
tf=1;
xf=1;
sd=sqrt(dt);
t=t0:dt:tf;
nt=length(t);
iter=100;
iter2=1000;
rng('shuffle');
lb=zeros(nt,1);

parfor i=1:nt-1
 M=zeros(1,iter);
 m=zeros(1,iter2);
 for k=1:iter2
  for j=1:iter
   M(j)=mean(bbridge(x0,tf,dt,sd,i*dt:dt:tf));
  end
  m(k)=max(M);
 end
 lb(i)=mean(m);
end

lbfit=fittype('a*(1-t)^b','independent', 't', 'dependent', 'lb');
close all
plot(t,lb)
hold on