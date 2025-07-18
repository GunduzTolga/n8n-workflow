# ✨📊Multi-AI Agent Chatbot for Postgres/Supabase DB and QuickCharts + Tool Router

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
Bu workflow dosyasında açıklayıcı bir not bulunmamaktadır.

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
   - Gerekli alanlara (Webhook URL, anahtar kelimeler, zamanlayıcı vb.) kendi değerlerinizi girin.
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

### Özel Ayarlar
1. Workflow'u kullanmadan önce her node içerisindeki **Credentials** bölümünden gerekli API anahtarlarını ekleyin.
2. Webhook veya diğer parametre alanlarını kendi ortam bilgilerinize göre düzenleyin.
3. `Webhook` node'u varsa test URL'sini kopyalayıp diğer servislerde kullanmayı unutmayın.

## Sıkça Sorulan Sorular
* **Workflow çalışmıyor, ne yapabilirim?** `Executions` ekranından hata mesajlarını inceleyin ve eksik credential ayarlarını tamamlayın.
* **Webhook URL'sini nereden alırım?** `Webhook` node'unu düzenlerken sağ üstte görünen URL'yi kopyalayıp ilgili platforma yapıştırabilirsiniz.
