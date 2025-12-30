function c = ikiyebol(f, a, b)
    eps = 1e-4;
    sayac = 0;
    c = (a + b) / 2;
    while abs(f(c)) > eps
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        c = (a + b) / 2;
        sayac = sayac + 1;
    end
    fprintf('Ikiye B"olme metodu %d adimda c"ozdˆ¢.\n', sayac);
end
