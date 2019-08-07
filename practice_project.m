dt=.01;
dx=.01;
x0=0;
tf=1;
t=0:dt:tf;
x=0:dx:1;
[T,X]=meshgrid(t,x);
iter=100;
bbm=zeros(1,iter);
rng('shuffle');
A=zeros(length(x),length(t));
M=zeros(length(x),length(t));
for i=1:length(t)
 for j=1:length(x)
  x0=x(j);
  M(j,i)=Ebbmax(x0,tf,dt,t(i:length(t)),bbm); 
 end
end
F=X>M;
% [T,X]=meshgrid(t,x);
% surf(T,X,M)
% plot(t,M)
% y=.8399*sqrt(1-t);
% hold on
% plot(t,y)
% hold off