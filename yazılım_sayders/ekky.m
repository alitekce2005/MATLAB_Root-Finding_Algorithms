function ekky(x,y,t)
  m = length(x);
  a11 = m;
  a12 = sum(x);
  a21=a12;
  a22=sum(x.^2);
  A=[a11 a12;a21 a22];
  c1=sum(y);
  c2=sum(x.*y);
  C=[c1 c2]';
  U=A\C;
  a=U(1);
  b=U(2);
  plot(x,y,'*r'); hold on;
  xx=x(1):0.1:x(end);
  p=a+b*xx;
  tahmin = a+b *t;
  plot(xx,p);
