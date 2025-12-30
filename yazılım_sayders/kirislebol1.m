function c=kirislebol(f,a,b)
  eps=1e-4;
  m=(f(b)-f(a))/(b - a);
  c=a-f(a)/m
  while abs(f(c))>eps
    if f(a)*f(c)<0 b=c;
      else a=c;
    endif
  end
  m=(f(b)-f(a))/(b - a);
  c=a-f(a)/m
 end
