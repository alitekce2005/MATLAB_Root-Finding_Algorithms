function tahmin = eppx2(x, y, t)
  % x'in eleman sayisini bul (m)
  m = length(x);

  % Matris elemanlarini hesapla
  a11 = m;
  a12 = sum(x);
  a13 = sum(x.^2);
  a21 = a12;
  a22 = sum(x.^2);
  a23 = sum(x.^3);
  a31 = a13;
  a32 = a23;
  a33 = sum(x.^4);

  % A matrisini olustur
  A = [a11 a12 a13; a21 a22 a23; a31 a32 a33];

  % C vekt"or"un"u olustur
  c1 = sum(y);
  c2 = sum(x .* y);
  c3 = sum(x.^2 .* y);
  C = [c1 c2 c3]';

  % Katsayilari hesapla (U = [a; b; c])
  U = A \ C;
  a = U(1);
  b = U(2);
  c = U(3);

  % Grafik cizimi
  plot(x, y, '*r'); % Veri noktalarini kirmizi yildiz isaretleriyle ciz
  hold on; % Mevcut grafigi koru

  % a + bx + cx^2 egrisini ciz
  xx = linspace(min(x), max(x), 100); % x araliginda 100 nokta
  p = a + b * xx + c * xx.^2; % Model tahmini
  plot(xx, p); % Modeli ciz

  % Tahmin yap
  tahmin = a + b * t + c * t^2; % t degerine g"ore tahmin hesapla

  % Grafik ayarlari
  xlabel('x');
  ylabel('y');
  title('Kuadratik Regresyon: a + bx + cx^2');
  grid on;
  hold off; % Grafik cizimini sonlandir
end

