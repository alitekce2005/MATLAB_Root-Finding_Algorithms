function c = kirislebolyeni(f, a, b)
eps = 1e-4;

fprintf('=== Kirisle Bolme Yontemi: Ilk Iki Yaklasim ===\n');
fprintf('f(%g) = %.4f\n', a, f(a));
fprintf('f(%g) = %.4f\n\n', b, f(b));

% --- 1. Yaklasim ---
m = (f(b) - f(a)) / (b - a);
c = a - f(a)/m;
fprintf('1. Yaklasim (c1): %.4f\n', c);
fprintf('f(c1) = %.4f\n\n', f(c));

% --- 2. Yaklasim ---
if f(a) * f(c) < 0
    b = c;
else
    a = c;
end
m = (f(b) - f(a)) / (b - a);
c = a - f(a)/m;
fprintf('2. Yaklasim (c2): %.4f\n', c);
fprintf('f(c2) = %.4f\n\n', f(c));

% --- K"ok bulma d"ongˆ¢sˆ¢ ---
while abs(f(c)) > eps
    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end
    m = (f(b) - f(a)) / (b - a);
    c = a - f(a)/m;
end

fprintf('Kirisle Bolme metodu koku %.5f buldu.\n', c);

end

