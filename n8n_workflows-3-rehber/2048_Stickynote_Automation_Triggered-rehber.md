# 🗨️Ollama Chat

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# 🦙 Ollama Chat Workflow

A simple N8N workflow that integrates Ollama LLM for chat message processing and returns a structured JSON object.

## Overview
This workflow creates a chat interface that processes messages using the Llama 3.2 model through Ollama. When a chat message is received, it gets processed through a basic LLM chain and returns a response.

## Components
- **Trigger Node**
- **Processing Node**
- **Model Node**
- **JSON to Object Node**
- **Structured Response Node**
- **Error Response Node**

## Workflow Structure
1. The chat trigger node receives incoming messages
2. Messages are passed to the Basic LLM Chain
3. The Ollama Model processes the input using Llama 3.2
4. Responses are returned through the chain

## Prerequisites
- N8N installation
- Ollama setup with Llama 3.2 model
- Valid Ollama API credentials

## Configuration
1. Set up the Ollama API credentials in N8N
2. Ensure the Llama 3.2 model is available in your Ollama installation

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

