function [a, b] = arbul(f, x0)

    x = x0;
    h = 0.1;
    R = 10;
    sondeger = x0 + R;
    ilkdeger=x0-R;

    while x < sondeger
        if f(x) * f(x + h) > 0
            x = x + h;
            else
            a = x;
            b = x + h;
            return;
              end
            end
            disp('Sag yanda sifir yeri yok');
            x=x0;

      while x < ilkdeger
        if f(x) * f(x - h) > 0
            x = x - h;
            else
            a = x-h;
            b = x ;
            return;
              end
            end
            disp('Sol yanda sifir yeri yok');
            a=[] ; b=[];
