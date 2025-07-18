# Şüpheli Giriş Tespiti

Bu n8n workflow'u, GreyNoise verilerini kullanarak gelen IP adreslerini analiz eder ve öncelik seviyesine göre PostgreSQL veritabanına kayıt eder.

## Workflow Açıklaması
![greynoise](https://i.imgur.com/4vSwTkY.png)

Workflow içindeki `GreyNoise` düğümü IP adreslerini NOISE ve RIOT veri setlerinde sorgular. Sonuçlara göre `Priority` düğümleri aracılığıyla uyarı seviyeleri belirlenir. Böylece güvenlik ekibiniz en kritik tehditlere öncelik verebilir.

### Kimlik Doğrulama
GreyNoise için ücretsiz bir plan bulunmadığından API anahtarınızı [GreyNoise](https://www.greynoise.io/) sitesinden almanız gerekir. `GreyNoise` düğümünü açarak `Header Auth` yöntemiyle anahtar adını **key**, değerini ise kendi API anahtarınız olacak şekilde tanımlayın.

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
## Detaylı Kullanım Kılavuzu

Bu workflow dosyasını ilk kez çalıştıracaksanız aşağıdaki adımları takip edin.

1. **n8n kurulumunu yapın**
   - `npm` yöntemi: `npx n8n` komutuyla yerel ortamda çalıştırabilirsiniz.
   - Docker yöntemi: `docker run -it --rm -p 5678:5678 n8nio/n8n` komutu ile çalıştırın.
   - Sonrasında tarayıcınızdan `http://localhost:5678` adresine erişerek n8n editörüne ulaşın.
2. **Workflow'u içe aktarın**
   - Editörde sağ üstteki **Import** menüsünden `Import from File` seçeneğini tıklayın.
   - Bu repodaki ilgili JSON dosyasını seçin ve kaydedin.
3. **Kimlik bilgilerini tanımlayın**
   - Workflow içerisinde işlem yapan her node ilgili servise bağlanmak için API anahtarına ihtiyaç duyar.
   - Node'u açıp **Credentials** bölümünden yeni bir kimlik bilgisi oluşturun veya var olanı seçin.
4. **Parametreleri özelleştirin**
   - Gerekli alanlara (webhook URL, anahtar kelimeler, zamanlayıcı vb.) kendi değerlerinizi girin.
5. **Çalıştırıp doğrulayın**
   - Üst menüden **Execute Workflow** diyerek testi gerçekleştirin.
   - Beklenen sonuçları alırsanız **Activate** diyerek otomasyonu devreye alın.
6. **Hata durumunda**
   - `Executions` sekmesinden logları inceleyebilir, hatalı node'ları düzelterek yeniden deneyebilirsiniz.
7. **Logları inceleyin ve ilerlemeyi kaydedin**
   - Test yürütmesinden sonra `Executions` sayfasında her adımın çıktısını görebilirsiniz.
   - Gerekirse **Save Execution Progress** seçeneğini açarak ayrıntılı log tutabilirsiniz.
8. **Workflow'u ihtiyacınıza göre kişiselleştirin**
   - Node'ları kopyalayıp parametreleri değiştirerek akışı genişletebilirsiniz.
   - Değişikliklerden sonra tekrar **Execute Workflow** deyip sonucu kontrol edin.

### Özel Ayarlar (2014)
1. Bir PostgreSQL veritabanına erişim yetkisine ihtiyacınız var. `Postgres` düğümünün **Credentials** bölümünde sunucu, kullanıcı adı ve şifre bilgilerinizi girin.
2. [GreyNoise](https://www.greynoise.io/) üzerinden bir hesap oluşturup API anahtarınızı alın.
3. `GreyNoise` düğümünü açın ve oluşturduğunuz API anahtarını **Header Auth** yöntemiyle ekleyin (anahtar adı `key`).
4. Workflow gelen ve giden IP adreslerini sorgular; test için örnek bir IP girerek çalıştırabilir ve öncelik değerlerinin doğru olduğunu gözlemleyebilirsiniz.
5. `Postgres` düğümündeki `Table` alanına sorgu yapacağınız tablonun adını doğru girdiğinizden emin olun.

## Sıkça Sorulan Sorular
* **GreyNoise API anahtarım çalışmıyor, ne yapabilirim?** Anahtarınızın doğru kopyalandığından ve geçerli bir plana sahip olduğunuzdan emin olun. Ücretsiz sürümde API erişimi sınırlıdır.
* **Veritabanı bağlantısı kurulamıyor.** `Postgres` düğümündeki host, port, kullanıcı adı ve parola bilgilerinin doğru olduğunu ve ağ bağlantınızda engel bulunmadığını kontrol edin.
* **Webhook yanıtları boş geliyor.** `Postgres` sorgunuzun veri döndürdüğünden ve `Webhook Response` node'unun doğru bağlandığından emin olun.
