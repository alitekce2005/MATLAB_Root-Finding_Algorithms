% Sinav Sorularini Fonksiyonlarla C"ozen Ana Script

clear;
clc;
format long; % Sonuclari daha hassas g"ormek icin

disp('--- Soru b) ve c) C"ozˆ¢mleri ---');
disp('Not: Bu script, k"okˆ¢ 1e-4 hassasiyetle bulur, sadece ilk iki adimi g"ostermez.');
disp(' ');

% --- Grup A (k=2) ---
disp('--- Grup A (k=2) C"ozˆ¢mleri ---');
f_A = @(x) x.^2 - 2;
a_A = 0;
b_A = 4;
fprintf('Fonksiyon: f(x) = x^2 - 2, Aralik: [%d, %d]\n', a_A, b_A);

% Ikiye B"olme Metodu ile C"ozˆ¢m
disp('Ikiye Bolme Metodu Sonucu:');
kok_bisection_A = ikiyebol(f_A, a_A, b_A);
fprintf('Bulunan kok: c = %.8f\n\n', kok_bisection_A);

% Kiris Metodu ile C"ozˆ¢m
disp('Kiris Metodu Sonucu:');
kok_regula_A = kirislebol(f_A, a_A, b_A);
fprintf('Bulunan kok: c = %.8f\n', kok_regula_A);

disp('========================================');

% --- Grup B (k=3) ---
disp('--- Grup B (k=3) C"ozˆ¢mleri ---');
f_B = @(x) x.^2 - 3;
a_B = 0;
b_B = 6;
fprintf('Fonksiyon: f(x) = x^2 - 3, Aralik: [%d, %d]\n', a_B, b_B);

% Ikiye B"olme Metodu ile C"ozˆ¢m
disp('Ikiye Bolme Metodu Sonucu:');
kok_bisection_B = ikiyebol(f_B, a_B, b_B);
fprintf('Bulunan kok: c = %.8f\n\n', kok_bisection_B);

% Kiris Metodu ile C"ozˆ¢m
disp('Kiris Metodu Sonucu:');
kok_regula_B = kirislebol(f_B, a_B, b_B);
fprintf('Bulunan kok: c = %.8f\n', kok_regula_B);
