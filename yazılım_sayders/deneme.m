disp('--- Soru a) C"ozˆ¢mˆ¢ ---');

% --- Grup A (k=2) ---
disp('Grup A (k=2) icin:');
k_A = 2;
f_A = @(x) x.^2 - k_A;      % Fonksiyonu tanimla
aralik_A = [0, 2*k_A];     % Araligi tanimla

% Araligin uc noktalarindaki degerleri hesapla
f_baslangic_A = f_A(aralik_A(1));
f_bitis_A = f_A(aralik_A(2));

fprintf('Aralik: [%d, %d]\n', aralik_A(1), aralik_A(2));
fprintf('f(%d) = %.2f\n', aralik_A(1), f_baslangic_A);
fprintf('f(%d) = %.2f\n', aralik_A(2), f_bitis_A);

% Ara Deger Teoremi kontrolˆ¢
if f_baslangic_A * f_bitis_A < 0
    disp('f(baslangic) ve f(bitis) zit isaretli oldugu icin bu aralikta bir k"ok VARDIR.');
else
    disp('Bu y"ontemle k"ok varligi ispatlanamaz.');
end

disp('--------------------');

% --- Grup B (k=3) ---
disp('Grup B (k=3) icin:');
k_B = 3;
f_B = @(x) x.^2 - k_B;      % Fonksiyonu tanimla
aralik_B = [0, 2*k_B];     % Araligi tanimla

% Araligin uc noktalarindaki degerleri hesapla
f_baslangic_B = f_B(aralik_B(1));
f_bitis_B = f_B(aralik_B(2));

fprintf('Aralik: [%d, %d]\n', aralik_B(1), aralik_B(2));
fprintf('f(%d) = %.2f\n', aralik_B(1), f_baslangic_B);
fprintf('f(%d) = %.2f\n', aralik_B(2), f_bitis_B);

% Ara Deger Teoremi kontrolˆ¢
if f_baslangic_B * f_bitis_B < 0
    disp('f(baslangic) ve f(bitis) zit isaretli oldugu icin bu aralikta bir k"ok VARDIR.');
else
    disp('Bu y"ontemle k"ok varligi ispatlanamaz.');
end
