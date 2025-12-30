function sonuc=horner(a,x0)
  m=length(a);
  b(1)=a(1);
  for i=2: m
    b(i)=a(i)+x0*b(i-1);
  end
  sonuc=b(m)

