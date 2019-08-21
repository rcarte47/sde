function x = bbridge(x0, tf, dt,sd, t)

x=zeros(1,length(t));
x(1)=x0;

for i = 1:length(t)-2
 x(i+1) = x(i) - x(i)/(tf-t(i)) * dt +  sd * randn;
end

end

