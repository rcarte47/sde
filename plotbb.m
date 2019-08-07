dt=.01;
x0=0:.01:3;
tf=1;
t=0:dt:tf;
iter=10000;
rng('shuffle');
bb=zeros(iter, length(t));

for i=1:iter
 bb(i,:)=bbridge(x0,tf,dt,t);
end
dx1=bb(:,2)-bb(:,1);
sum(dx1<0)/iter

% plot(t,bb)
% y=.8399*sqrt(1-t);
% hold on
% plot(t,y)
% hold off