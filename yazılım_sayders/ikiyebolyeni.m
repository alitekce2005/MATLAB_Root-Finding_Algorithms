function c = ikiyebolyeni(f, a, b)
eps = 1e-4;
sayac = 0;

fprintf('=== Ikiye Bolme Yontemi: Ilk Iki Yaklasim ===\n');
fprintf('f(%g) = %.4f\n', a, f(a));
fprintf('f(%g) = %.4f\n\n', b, f(b));

% --- 1. Yaklasim ---
c = (a + b) / 2;
fprintf('1. Yaklasim (c1): %.4f\n', c);
fprintf('f(c1) = %.4f\n\n', f(c));

% Araligi gˆ¢ncelle
if f(a) * f(c) < 0
    b = c;
else
    a = c;
end

% --- 2. Yaklasim ---
c = (a + b) / 2;
fprintf('2. Yaklasim (c2): %.4f\n', c);
fprintf('f(c2) = %.4f\n\n', f(c));

while abs(f(c)) > eps
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
    c = (a + b) / 2;
    sayac = sayac + 1;
end

fprintf('Ikiye Bolme metodu %d adimda cozdu. Kok: %.5f\n', sayac, c);

end

