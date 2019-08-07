function m = maxbb(x0, tf, dt, t)

x=x0;
m=x0;

for i = 1:length(t)-1
 x = x - x/(tf-t(i)) * dt +  sqrt(dt) * randn;
 if x>m
  m=x;
 end
end

end

