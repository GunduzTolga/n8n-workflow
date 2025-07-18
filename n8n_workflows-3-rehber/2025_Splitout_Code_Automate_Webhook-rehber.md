# Clone n8n Workflows between Instances using n8n API

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
### Change the Destination Project by changing the Project Name

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
## Detayli Kullanim Kilavuzu

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



### Ozel Ayarlar
1. Workflow'u kullanmadan once her node icerisindeki **Credentials** bolumunden gerekli API anahtarlarini ekleyin.
2. Webhook veya diger parametre alanlarini kendi ortam bilgilerinize gore duzenleyin.
3. `Webhook` node'u varsa test URL'sini kopyalayip diger servislerde kullanmayi unutmayin.

## Sikca Sorulan Sorular
* **Workflow calismiyor, ne yapabilirim?** `Executions` ekranindan hata mesajlarini inceleyin ve eksik credential ayarlarini tamamlayin.
* **Webhook URL'sini nereden alirim?** `Webhook` node'unu duzenlerken sag ustte gorunen URL'yi kopyalayip ilgili platforma yapistirabilirsiniz.
