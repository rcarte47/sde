function Em = Ebbmax(x0, tf, dt, t, bbm)

for i=1:length(bbm)
 bbm(i)=maxbb(x0,tf,dt,t);
end
Em=mean(bbm);

end

