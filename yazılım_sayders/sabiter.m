function x1 = sabiter(g, x0)
    mindeger = 1e-10; % Minimum deger
    maxdeger = 1e5;   % Maksimum deger
    maxsayac = 100;   % Maksimum iterasyon sayisi
    test = 1;         % Test kosulu
    sayac = 0;        % Sayac

    while test
        x1 = g(x0);                     % Fonksiyonu uygula
        fark = abs(x1 - x0);            % Degisimi hesapla
        test = (fark > mindeger) & (abs(x1) < maxdeger) & (sayac < maxsayac);
        x0 = x1;                        % Yeni degeri g"uncelle
        sayac = sayac + 1;              % Sayac artir
    end

    if abs(x1) >= maxdeger
        disp("iterasyon iraksaktir");
        x1 = [];
    elseif sayac == maxsayac
        disp(["iterasyon, ", num2str(sayac), " adimdayakinsamamistir"]);
        x1 = [];
    end
end

