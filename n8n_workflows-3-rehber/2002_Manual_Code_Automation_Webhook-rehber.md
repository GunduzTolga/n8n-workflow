# Turn YouTube Videos into Summaries, Transcripts, and Visual Insights

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# How to Use This Workflow

Video Overview: [https://www.youtube.com/watch?v=Ovg_KfKxnC8](https://www.youtube.com/watch?v=Ovg_KfKxnC8)

Use this workflow to analyze YouTube videos effortlessly. Start by requesting a summary or transcript—then refine the prompts to fit your needs and the type of content you're working with.

Even more impressive? You can ask specific questions about what’s happening in a video—identifying people, scenes, and visual details. The ability to extract this level of insight is game-changing.

This workflow is highly adaptable—actions adjust based on the values you set. With a single flow, you can generate transcripts, create detailed YouTube descriptions, and draft summary blog posts.

Triggers are flexible, too. Run it manually, connect it to a webhook, or automate it through Airtable or another system. The output can go anywhere -- Notion, Google Docs, CMS platforms -- or simply stay in n8n for on-the-fly analysis.

This workflow was created using n8n 1.82.3.

## Requirements
* [Google API key](https://console.developers.google.com/) (or obtain via [AI Studio](https://aistudio.google.com/apikey))

## Testing
* This workflow was tested on an assortment of public YouTube videos from shorts up to about an hour in length.

## Future-proofing
* This workflow was created for use with gemini-1.5-flash. In the future, the set nodes for prompts could be updated to use different models and possibly add in what API endpoint should be used in the http node.

## Documentation
* [Explore vision capabilities with the Gemini API](https://ai.google.dev/gemini-api/docs/vision?lang=python)
* [Pricing](https://ai.google.dev/gemini-api/docs/pricing)

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

### Ozel Ayarlar (2002)
1. Google Cloud hesabinizda [API Keys](https://console.cloud.google.com/apis/credentials) bolumunden yeni bir **API anahtari** olusturun.
2. n8n editorunde `Set: Define Initial Variables` dugumunu acin ve `apiKey` alanina bu anahtari yazin.
3. `youtubeURL` alanina analiz etmek istediginiz YouTube videosunun tam baglantisini girin.
4. Workflow'u test ettiginizde cikti olarak hem video ozetini hem de transcript dosyasini alabilirsiniz.
5. Buyuk videolar icin `maxResults` degerini API limitlerini asmamak icin uygun sekilde ayarlayin.

## Sikca Sorulan Sorular
* **Video linki calismiyor, ne yapmaliyim?** Videonun herkese acik oldugundan emin olun ve URL'nin dogru kopyalandigini kontrol edin.
* **Ciktilari nerede gorecegim?** Workflow sonunda olusan veriler `Webhook Response` veya eklediginiz diger cikti nodelarinda goruntulenir. Dilerseniz Notion, Google Docs gibi baska servislere baglayabilirsiniz.
* **API anahtarim hatali mi?** `Set: Define Initial Variables` node'undaki `apiKey` alanini tekrar kontrol edin ve gecerli bir anahtar girdiginizden emin olun.
