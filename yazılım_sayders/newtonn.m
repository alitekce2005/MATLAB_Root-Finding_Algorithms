function x1=newtonn(f,fp,x0)
  mindeger=1e-10;maxdeger=1e5;maxsayac=100;
  sayac=0; test=1;
  while test
    delx=-fp(x0)\f(x0);x1=x0+delx;
    fark=norm(delx, inf);sayac=sayac+1;
    test=(fark>mindeger)&(norm(x1,inf)<maxdeger)&(sayac<maxsayac);
    x0=x1
  endwhile
  if norm(x1,inf)>maxdeger
    disp("iterasyon iraksaktir"); x1=[];
  elseif sayac==maxsayac
    disp(["iterasyon",num2str(sayac),"adimda yakinsamamistir"]);
    x1=[];
  end
