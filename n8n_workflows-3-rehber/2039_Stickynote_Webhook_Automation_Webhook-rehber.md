# Travel AssistantAgent

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
## AI Traveling Agent Powered by MongoDB Atlas for Memory and vector search.

**Atlas MongoDB Memory Node**

- The memory node allows the agent to persist and retrieve conversation based on threads in the database. It uses MongoDB felxible store capabilities to allow different type of threads and messages (Image, audio, video etc.) to be stored easily and effectivley 


**Atlas MongoDB Vector Store Node**

- Atlas Vector Store tool allows the agent to get up to date points of interest from our vector store database populated and embedded with OpenAI Embeddings.


### You will need to:
1. Setup your Google API Credentials for the Gemini LLM
2. Setup your OpenAI Credentials for the OpenAI embedding nodes.
3. [MongoDB Atlas project and Cluster](https://www.mongodb.com/docs/atlas/tutorial/create-new-cluster/). Get a hold of the connection string and make sure to have your IP Access list enabled (for ease of testing try `0.0.0.0/0` access.
4. Setup you MongoDB Credentials account with the correct connection string and database name.
5. **Vector Search Tool** - uses Atlas Vector Search index you will create on your database for the `points_of_interest` collection:

```
// index name : "vector_index"
// If you change an embedding provider make sure the numDimensions correspond to the model.
{
  "fields": [
    {
      "type": "vector",
      "path": "embedding",
      "numDimensions": 1536,
      "similarity": "cosine"
    }
  ]
}
```

Once all of that is configured you will need to send the loading webhook with some data points (see example).

This should create vectorised data in  `points_of_interest` collection.

Once you have data points there try to ask the Agent questions about the data points and test the response. Eg. "Where should I go for a romantic getaway?"

**Additional Resources**
- [MongoDB Atlas Vector Search](https://www.mongodb.com/docs/atlas/atlas-vector-search/tutorials/vector-search-quick-start/?utm=n8n.io)
- [n8n Atlas Vector Search docs](https://docs.n8n.io/integrations/builtin/cluster-nodes/root-nodes/n8n-nodes-langchain.vectorstoremongodbatlas?utm=n8n.io)

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
