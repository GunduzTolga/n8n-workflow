# Telegram Üzerinden OpenSea İçgörüleri

Bu n8n workflow'u, OpenSea pazarına ait verileri Telegram botu üzerinden sorgulamak için hazırlanmıştır. Bir Telegram botu aracılığıyla gelen sorular ilgili yardımcı akışlara yönlendirilir ve sonuçlar yine Telegram üzerinden gönderilir.

## Workflow Açıklaması

Sistem dört ayrı agent workflow'undan oluşur: Analiz Aracı, Pazar Yeri Aracı, NFT Aracı ve bunları yöneten Süpervizör. Kullanıcı Telegram üzerinden soru gönderdiğinde Süpervizör ilgili agent'ı çalıştırır ve cevabı kullanıcıya iletir.

---

## Kurulum Talimatları

### 1️⃣ Ana Süpervizörü (Telegram Workflow) Kurma
1. [BotFather](https://t.me/botfather) ile bir Telegram botu oluşturun ve aldığınız API anahtarını kaydedin.
2. Bu anahtarı n8n'deki **Telegram Trigger** düğümüne tanımlayın.
3. Kullanıcı mesajlarını almak için **Chat Message Received** düğümünü kurun.
4. Konuşma geçmişini takip etmek için **Session ID** düğümünü yapılandırın.
5. Mesajları işlemek üzere **AI Supervisor Brain** düğümünü bağlayın.
6. Üç farklı agent workflow'unu **Tool Workflow** düğümleri üzerinden bu akışa ekleyin.
7. Sonuçları Telegram'a göndermek için **Telegram** düğümünü kullanın.

### 2️⃣ Agent Workflow'larını Yapılandırma
Her agent, Telegram akışına bağlı ayrı bir workflow'dur:

**A. OpenSea Analytics Agent** – Piyasa trendleri ve işlem geçmişini getirir.
**B. OpenSea Marketplace Agent** – NFT liste ve tekliflerindeki en iyi fiyatları çeker.
**C. OpenSea NFT Agent** – NFT metadata ve sahiplik bilgilerini sunar.

### 3️⃣ Agent'ları Süpervizöre Bağlama
Telegram akışındaki her **Tool Workflow** düğümünde sorguyu doğru agent'a iletecek şekilde ayarlar yapın.

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

### Özel Ayarlar (2004)
1. Telegram üzerinden [@BotFather](https://t.me/BotFather) ile bir bot oluşturun ve aldığınız **bot tokenini** kaydedin.
2. n8n editöründe `Telegram Trigger` düğümünün **Credentials** kısmına bu bot tokenini tanımlayın.
3. Aynı düğümde `Chat ID` alanını botun mesajlaşacağı kullanıcı veya grup ID'si ile doldurun.
4. Workflow'da kullanılan diğer "agent" workflow'larını da n8n'e import edip `Tool Workflow` düğümlerinde ilgili isimleri seçmeyi unutmayın.
5. Test mesajını Telegram üzerinden göndererek sistemin doğru çalıştığını kontrol edin.
6. Uzun süreli kullanım için `Telegram Trigger` düğümündeki polling ayarlarını ihtiyacınıza göre düzenleyin.

## Sıkça Sorulan Sorular
* **Telegram botu mesaj almıyor, neden?** Botu oluşturduktan sonra en az bir kez sohbet penceresinden mesaj gönderin ve botun gizlilik ayarlarının doğru olduğundan emin olun.
* **Agent workflow'larına nasıl parametre geçerim?** `Tool Workflow` nodelarındaki `Input` alanlarını düzenleyerek ihtiyacınız olan parametreleri iletebilirsiniz.
* **Polling ne kadar sık yapılmalı?** Mesaj trafiğine göre `Telegram Trigger` düğümündeki interval değerini ihtiyacınıza göre ayarlayabilirsiniz.
