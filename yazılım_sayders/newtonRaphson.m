function [kok, iterasyon] = newtonRaphson(f, df, x0, tol, maxIter)
    % Newton-Raphson y"ontemiyle k"ok bulma
    % Girdiler:
    %   f      - K"okˆ¢ aranan fonksiyon (function handle)
    %   df     - Fonksiyonun tˆ¢revi (function handle)
    %   x0     - Baslangic tahmini
    %   tol    - Tolerans (varsayilan: 1e-6)
    %   maxIter - Maksimum iterasyon (varsayilan: 100)
    % Ciktilar:
    %   kok      - Bulunan k"ok degeri
    %   iterasyon - Kullanilan iterasyon sayisi

    if nargin < 4
        tol = 1e-6; % Varsayilan tolerans
    end
    if nargin < 5
        maxIter = 100; % Varsayilan maksimum iterasyonw
    end

    iterasyon = 0;
    x = x0;

    while iterasyon < maxIter
        f_deger = f(x);
        df_deger = df(x);

        if df_deger == 0
            error('Tˆ¢rev sifir! Y"ontem uygulanamaz.')
        end

        x_yeni = x - f_deger/df_deger; % Newton-Raphson formˆ¢lˆ¢
        hata = abs(x_yeni - x);

        if hata < tol
            kok = x_yeni;
            return
        end

        x = x_yeni;
        iterasyon = iterasyon + 1;
    end

    error('Maksimum iterasyon asildi. Yakinsama saglanamadi.')
end

