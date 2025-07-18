# YouTube Videolarını Özetleyip Analiz Etme Workflow'u

Bu n8n workflow dosyası, YouTube videolarından otomatik olarak özet ve transkript çıkarmak için kullanılır. Aşağıda workflow'un temel amacı ve kullanım şekli anlatılmaktadır.

## Workflow Açıklaması

Bu workflow'a YouTube video bağlantısını vererek içeriğin kısa bir özetini, transkriptini ve görsel detayların analizini elde edebilirsiniz. Manual çalıştırabileceğiniz gibi bir webhook üzerinden de tetikleyebilirsiniz. Elde edilen sonuçlar Notion veya Google Docs gibi farklı platformlara gönderilebilir.

Workflow n8n 1.82.3 sürümü ile oluşturulmuştur.

## Gereksinimler
* [Google API anahtarı](https://console.developers.google.com/) (ya da [AI Studio](https://aistudio.google.com/apikey) üzerinden edinilebilir)

## Test Bilgileri
* Workflow, uzunluğu birkaç dakikadan bir saate kadar değişen videolar üzerinde test edilmiştir.

## İleriye Yönelik Notlar
* Workflow şu an gemini-1.5-flash modeli için hazırlanmıştır. İleride farklı modelleri veya API uç noktalarını kullanmak üzere `Set` nodeları güncellenebilir.

## Dokümantasyon
* [Gemini API görsel yetenekleri](https://ai.google.dev/gemini-api/docs/vision?lang=python)
* [Fiyatlandırma](https://ai.google.dev/gemini-api/docs/pricing)

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

### Özel Ayarlar (2002)
1. Google Cloud hesabınızda [API Keys](https://console.cloud.google.com/apis/credentials) bölümünden yeni bir **API anahtarı** oluşturun.
2. n8n editöründe `Set: Define Initial Variables` düğümünü açın ve `apiKey` alanına bu anahtarı yazın.
3. `youtubeURL` alanına analiz etmek istediğiniz YouTube videosunun tam bağlantısını girin.
4. Workflow'u test ettiğinizde çıktı olarak hem video özetini hem de transkript dosyasını alabilirsiniz.
5. Büyük videolar için `maxResults` değerini API limitlerini aşmamak için uygun şekilde ayarlayın.

## Sıkça Sorulan Sorular
* **Video linki çalışmıyor, ne yapmalıyım?** Videonun herkese açık olduğundan emin olun ve URL'nin doğru kopyalandığını kontrol edin.
* **Çıktıları nerede göreceğim?** Workflow sonunda oluşan veriler `Webhook Response` veya eklediğiniz diğer çıktı nodelarında görüntülenir. Dilerseniz Notion, Google Docs gibi başka servislere bağlayabilirsiniz.
* **API anahtarım hatalı mı?** `Set: Define Initial Variables` node'undaki `apiKey` alanını tekrar kontrol edin ve geçerli bir anahtar girdiğinizden emin olun.
