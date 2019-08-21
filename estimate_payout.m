t0=0;
x0=0;
dt=.001;
dx=.01;
tf=1;
xf=1;
sd=sqrt(dt);
t=t0:dt:tf;
nt=length(t);
iter=100000;
X=zeros(iter,nt);
rng('shuffle');
lb=zeros(nt,1);
Ex=zeros(iter,1);
Ex2=zeros(iter,1);
a=0.724;
b=0.5034;
bound=a*(1-t).^b;
bound2=.8399*(1-t).^.5;
aiter=.72:.01:.85;
biter=.5;
Ex3=zeros(iter,length(aiter));
bound3=zeros(length(aiter),nt);

parfor i=1:iter
 X(i,:)=bbridge(x0,tf,dt,sd,t);
end

for i=1:length(aiter)
 bound3(i,:)=aiter(i)*(1-t).^b;
end

for i=1:iter
 Ex(i)=findex(X(i,:),bound);
 Ex2(i)=findex(X(i,:),bound2);
end

parfor j=1:length(aiter)
 for i =1:iter
  Ex3(i,j)=findex(X(i,:),bound3(j,:));
 end
end
m=mean(Ex);
m2=mean(Ex2);
m3=mean(Ex3);
close all
plot(aiter,m3)
