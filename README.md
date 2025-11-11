# MATLAB ile Sayısal Analiz Kök Bulma Yöntemleri

Bu depo, sayısal analiz dersleri kapsamında sıkça kullanılan temel kök bulma algoritmalarının MATLAB (`.m`) uygulamalarını içerir. Kodlar, belirli bir fonksiyonun köklerini (yani `f(x) = 0` denkleminin çözümlerini) bulmak için tasarlanmıştır.

## 📚 Kapsanan Yöntemler

Depoda aşağıdaki sayısal yöntemlerin implementasyonları bulunmaktadır:

1.  **İkiye Bölme (Bisection) Metodu:**
    * `ikiyebol.m`: Verilen bir `[a, b]` aralığında ( `f(a)` ve `f(b)` zıt işaretli olmalı) kökü bulan standart fonksiyon.
    * `ikiyebolyeni.m`: İlk iki adımı konsola yazdıran, daha açıklayıcı bir versiyon.

2.  **Kirişler (Regula Falsi / Secant) Metodu:**
    * `kirislebol1.m`: Kirişler metodunun (bazen "secant method" olarak da adlandırılır) temel bir uygulaması.
    * `kirislebolyeni.m`: İlk iki yaklaşım adımını gösteren geliştirilmiş versiyon.

3.  **Newton-Raphson Metodu:**
    * `newtonRaphson.m`: Fonksiyonu (`f`) ve türevini (`df`) girdi olarak alan detaylı bir Newton-Raphson fonksiyonu.
    * `newton.m`: Metodun daha kompakt bir alternatifi.

## 📂 Dosya Yapısı ve Kullanım

### Fonksiyonlar (Algorithms)
* `ikiyebol.m` / `ikiyebolyeni.m`: İkiye Bölme metodu.
* `kirislebol1.m` / `kirislebolyeni.m`: Kirişler (Regula Falsi) metodu.
* `newtonRaphson.m` / `newton.m`: Newton-Raphson metodu.
* `arbul.m`: Kök bulma yöntemleri için `f(a) * f(b) < 0` şartını sağlayan bir `[a, b]` aralığı bulmaya yardımcı olan bir script.

### Örnek Scriptler (Examples)
* `ana_script.m`: `x^2 - k` formatındaki fonksiyonların köklerini bulmak için `ikiyebol` ve `kirislebol` fonksiyonlarını çalıştıran ana test script'i.
* `deneme.m`: Ara Değer Teoremi'nin temel bir kontrolünü yapan bir deneme script'i.

### 🚀 Nasıl Çalıştırılır?

1.  MATLAB'i açın.
2.  Tüm `.m` dosyalarının bulunduğu klasörü MATLAB "Current Folder" (Geçerli Klasör) olarak ayarlayın.
3.  Örnek çözümleri görmek için `ana_script` veya `deneme` script'lerini çalıştırın:

    ```matlab
    >> ana_script
    ```
4.  Veya fonksiyonları kendi denklemlerinizle manuel olarak çağırın:

    ```matlab
    % Örnek: f(x) = x^2 - 2 fonksiyonunun [0, 4] aralığındaki kökü
    
    f = @(x) x.^2 - 2; % Fonksiyonu tanimla
    a = 0;
    b = 4;
    
    kok_bisection = ikiyebol(f, a, b);
    kok_regula = kirislebol1(f, a, b);
    
    fprintf('İkiye Bölme Kökü: %.8f\n', kok_bisection);
    fprintf('Kirişler Metodu Kökü: %.8f\n', kok_regula);
    ```

## 🤝 Katkıda Bulunma
Hata bulursanız, yeni yöntemler eklemek isterseniz veya mevcut kodları iyileştirmek isterseniz "Issue" açabilir veya "Pull Request" gönderebilirsiniz.
