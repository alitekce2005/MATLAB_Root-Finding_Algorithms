function x1 = newtonnn(f, fp, x0)
    mind = 1e-10;
    maxd = 1e5;
    maxsayac = 100;
    sayac = 0;

    % Ilk noktayi ciz (Kirmizi yuvarlak)
    plot(x0(1), x0(2), 'ro', 'MarkerSize', 8, 'LineWidth', 2);
    hold on;

    while sayac < maxsayac
        % HATA 1 D"UZELTILDI: / yerine \ kullanildi
        delx = -fp(x0) \ f(x0);
        x1 = x0 + delx;

        fark = norm(delx, inf);
        sayac = sayac + 1;

        % Her adimi ciz (Mavi yildiz)
        plot(x1(1), x1(2), 'b*');
        pause(0.1); % Hareketi g"ormek icin bekleme

        % HATA 2 D"UZELTILDI: Kosullar ayrildi ve mantik d"uzeltildi
        if fark < mind
             disp(['Yakinsama saglandi: ', num2str(sayac), '. adimda.']);
             return;
        end

        if norm(x1, inf) > maxd
             disp('Iterasyon iraksaktir (Sonsuza gidiyor).');
             x1 = [];
             return;
        end

        x0 = x1;
    end

    disp('Maksimum adim sayisina ulasildi, yakinsama yok.');
    x1 = [];
end
