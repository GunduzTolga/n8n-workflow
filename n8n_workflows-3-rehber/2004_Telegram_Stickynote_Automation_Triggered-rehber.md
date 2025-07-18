# OpenSea AI-Powered Insights via Telegram

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# OpenSea AI-Powered Insights System (n8n) - Full Integration Guide

## 🚀 System Overview
The **OpenSea AI-Powered Insights System** is a fully automated n8n workflow that connects multiple agent tools to deliver **real-time NFT market insights via Telegram**. This system consists of **four interconnected workflows**:

1. **OpenSea AI-Powered Insights via Telegram** (Main Supervisor)  
2. **OpenSea Analytics Agent Tool** (Market Trends & Collection Stats)  
3. **OpenSea Marketplace Agent Tool** (Live Listings, Offers, and Orders)  
4. **OpenSea NFT Agent Tool** (Metadata, Ownership & Payment Tokens)

These agents work **in sync** under the **Supervisor AI**, which determines the appropriate agent(s) to use based on user queries. Responses are structured and sent back via **Telegram** for real-time insights.

---

## 🔗 **System Architecture**

### **🔹 Core Workflow: OpenSea AI-Powered Insights via Telegram**
- Acts as the **brain and command center**.
- Receives queries from **Telegram Chat**.
- Determines which **agent(s)** should process the request.
- Aggregates and formats results.
- Sends structured responses back to the Telegram user.

### **🔹 Supporting Agent Tools**
Each **agent tool** is a separate n8n workflow with a specific function:

1️⃣ **OpenSea Analytics Agent** → Retrieves **market trends, sales history, transaction data**.  
2️⃣ **OpenSea Marketplace Agent** → Fetches **NFT listings, offers, best prices, and order details**.  
3️⃣ **OpenSea NFT Agent** → Retrieves **NFT metadata, ownership records, traits, and payment token data**.

The **Supervisor AI (Telegram Workflow)** calls these agent workflows as needed.

---

## 🛠 **Setup Instructions**

### **1️⃣ Setting Up the Main Supervisor (Telegram Workflow)**
1. **Create a Telegram Bot** using [BotFather](https://t.me/botfather).
2. **Copy the API Key** and connect it to n8n’s **Telegram Trigger Node**.
3. Set up the **Chat Message Received Node** to capture user queries.
4. Configure the **Session ID Node** to track conversation history.
5. Link the **AI Supervisor Brain (GPT-4o Mini)** to process messages.
6. Connect it to the **three agent tools** using **Tool Workflow Nodes**.
7. Send output back to Telegram using the **Telegram Node**.

✅ **This setup enables Telegram interaction with all OpenSea agents.**

### **2️⃣ Configuring the OpenSea Agent Tools**
Each agent tool must be linked to the main workflow:

**A. OpenSea Analytics Agent**
- Retrieves NFT market trends & transaction history.
- Requires **collection slug, wallet address, or transaction filters**.

**B. OpenSea Marketplace Agent**
- Fetches NFT listings, offers, and orders.
- Requires **collection slug, token ID, or order hash**.

**C. OpenSea NFT Agent**
- Retrieves NFT metadata, traits, and ownership data.
- Requires **wallet address, contract address, or token ID**.

### **3️⃣ Connecting the Agents to the Main Workflow**
Each **Tool Workflow Node** inside the **Telegram Supervisor Workflow** must be configured to pass the query **to the correct agent tool**.

Example:
- User asks: **“Find the cheapest listing for Bored Ape #1234”** → **Marketplace Agent is activated**.
- User asks: **“Retrieve all NFTs owned by 0xABC...”** → **NFT Agent is activated**.
- User asks: **“Compare last 3 months’ sales volume of Azuki and Moonbirds”** → **Analytics Agent is activated**.

---

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

### Ozel Ayarlar (2004)
1. Telegram uzerinden [@BotFather](https://t.me/BotFather) ile bir bot olusturun ve aldiginiz **bot tokenini** kaydedin.
2. n8n editorunde `Telegram Trigger` dugumunun **Credentials** kismina bu bot tokenini tanimlayin.
3. Ayni dugumde `Chat ID` alanini botun mesajlasacagi kullanici veya grup ID'si ile doldurun.
4. Workflow'da kullanilan diger "agent" workflow'larini da n8n'e import edip `Tool Workflow` dugumlerinde ilgili isimleri secmeyi unutmayin.
5. Test mesajini Telegram uzerinden gondererek sistemin dogru calistigini kontrol edin.
6. Uzun sureli kullanim icin `Telegram Trigger` dugumundeki polling ayarlarini ihtiyaciniza gore duzenleyin.

## Sikca Sorulan Sorular
* **Telegram botu mesaj almiyor, neden?** Botu olusturduktan sonra en az bir kez sohbet penceresinden mesaj gonderin ve botun gizlilik ayarlarinin dogru oldugundan emin olun.
* **Agent workflow'larina nasil parametre gecerim?** `Tool Workflow` nodelarindaki `Input` alanlarini duzenleyerek ihtiyaciniz olan parametreleri iletebilirsiniz.
* **Polling ne kadar sik yapilmali?** Mesaj trafigine gore `Telegram Trigger` dugumundeki interval degerini ihtiyaciniza gore ayarlayabilirsiniz.
