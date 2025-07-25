# Addon for Workflow Nodes Update Check Template

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
## Download the main workflow and connect it's output to this workflow
- Download this workflow and follow the belonging instructions: [https://n8n.io/workflows/2301-check-if-workflows-contain-build-in-nodes-that-are-not-of-the-latest-version/](https://n8n.io/workflows/2301-check-if-workflows-contain-build-in-nodes-that-are-not-of-the-latest-version/)
- Add an "Execute Workflow" node and configure it, so it calls this workflow.
  
![Image](https://i.imgur.com/y0vPhYz.png#full-width)

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
## Detaylı Kullanım Kılavuzu

Bu workflow dosyasini ilk kez calistiracaksaniz asagidaki adimlari takip edin.

1. **n8n kurulumunu yapin**  
   - `npm` yontemi: `npx n8n` komutuyla yerel ortamda calistirabilirsiniz.  
   - Docker yontemi: `docker run -it --rm -p 5678:5678 n8nio/n8n` komutu ile calistirin.  
   - Sonrasinda tarayicinizdan `http://localhost:5678` adresine eriserek n8n editorune ulasin.
2. **Workflow'u ice aktarın**  
   - Editorde sag ustteki **Import** menusunden `Import from File` secenegini tiklayin.  
   - Bu repodaki ilgili JSON dosyasini secin ve kaydedin.
3. **Kimlik bilgilerini tanimlayin**  
   - Workflow icerisinde islem yapan her node ilgili servise baglanmak icin API anahtarina ihtiyac duyar.  
   - Node'u acip **Credentials** bolumunden yeni bir kimlik bilgisi olusturun veya var olani secin.
4. **Parametreleri ozellestirin**  
   - Gerekli alanlara (webhook URL, anahtar kelimeler, zamanlayici vb.) kendi degerlerinizi girin.
5. **Calistirip dogrulayin**  
   - Ust menuden **Execute Workflow** diyerek testi gerceklestirin.  
   - Beklenen sonuclari alirsaniz **Activate** diyerek otomasyonu devreye alin.
6. **Hata durumunda**  
   - `Executions` sekmesinden loglari inceleyebilir, hatali node'lari duzelterek yeniden deneyebilirsiniz.
7. **Logları inceleyin ve ilerlemeyi kaydedin**
   - Test yürütmesinden sonra `Executions` sayfasında her adımın çıktısını görebilirsiniz.
   - Gerekirse **Save Execution Progress** seçeneğini açarak ayrıntılı log tutabilirsiniz.
8. **Workflow'u ihtiyacınıza göre kişiselleştirin**
   - Node'ları kopyalayıp parametreleri değiştirerek akışı genişletebilirsiniz.
   - Değişikliklerden sonra tekrar **Execute Workflow** deyip sonucu kontrol edin.



### Özel Ayarlar
1. Workflow'u kullanmadan once her node icerisindeki **Credentials** bolumunden gerekli API anahtarlarini ekleyin.
2. Webhook veya diger parametre alanlarini kendi ortam bilgilerinize gore duzenleyin.
3. `Webhook` node'u varsa test URL'sini kopyalayip diger servislerde kullanmayi unutmayin.

## Sıkça Sorulan Sorular
* **Workflow calismiyor, ne yapabilirim?** `Executions` ekranindan hata mesajlarini inceleyin ve eksik credential ayarlarini tamamlayin.
* **Webhook URL'sini nereden alirim?** `Webhook` node'unu duzenlerken sag ustte gorunen URL'yi kopyalayip ilgili platforma yapistirabilirsiniz.
