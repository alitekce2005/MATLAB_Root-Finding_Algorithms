Function x1=newton(f1,fp,x0)
eps=1e-4;
test=1;
while test
  x1=x0-f(x0)/fp(x0);
  fark=abs(x1-x0);
  test=fark>eps;
  x0=x1;
  end
