function b = brown(dt, t, seed )
rng(seed);
b=sqrt(dt)*randn(1,length(t));
end

