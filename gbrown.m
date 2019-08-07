function x = gbrown( r, alpha, dt, t, seed)

x = ones(1,length(t));
rng(seed);

for i = 1:length(t)-1
 x(i+1) = x(i) + r * x(i) * dt + alpha * x(i) * sqrt(dt) * randn;
end

end

