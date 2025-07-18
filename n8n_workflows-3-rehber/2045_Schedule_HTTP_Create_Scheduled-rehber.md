# 2045_Schedule_HTTP_Create_Scheduled.json

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# Financial News Recap Workflow

This workflow automates the daily email delivery of curated financial news to a designated recipient at 7:00 AM. It extracts relevant financial news articles, structures the content, and sends it in a concise summary format via Microsoft Outlook.

### Workflow Steps
1. **Schedule Trigger** 
 Sets the workflow to activate daily at 7:00 AM.
2. **Fetch Financial News** 
 Retrieves financial news content from [ft.com](https://www.ft.com/) using an HTTP Request node.
3. **Extract News Headlines and Sections** 
 Using CSS selectors, this node parses specific sections of the HTML page to gather key headlines and sections:
 - Headline #1, Headline #2
 - Editor's Picks
 - etc.
4. **Aggregate News Content** 
 Combines all extracted news sections into a single data set, organizing content under relevant categories.
5. **AI Agent for Summarization** 
 A Google Gemini Chat Model generates a structured summary in HTML format, optimized to provide investors with a clear market overview.
6. **Email Dispatch** 
 Sends the summarized content via Microsoft Outlook with a subject "Financial news from today," formatted in HTML for clarity and readability.

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
