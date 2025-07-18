# 2039_Stickynote_Webhook_Automation_Webhook Rehber

Bu rehber **Travel AssistantAgent** isimli iş akışının kurulumu ve kullanımını açıklar.

## Genel Bakış
Bu iş akışı şu node türlerini içerir: @n8n/n8n-nodes-langchain.agent,@n8n/n8n-nodes-langchain.chatTrigger,@n8n/n8n-nodes-langchain.documentDefaultDataLoader,@n8n/n8n-nodes-langchain.embeddingsOpenAi,@n8n/n8n-nodes-langchain.lmChatGoogleGemini,@n8n/n8n-nodes-langchain.memoryMongoDbChat,@n8n/n8n-nodes-langchain.textSplitterRecursiveCharacterTextSplitter,@n8n/n8n-nodes-langchain.vectorStoreMongoDBAtlas,n8n-nodes-base.stickyNote,n8n-nodes-base.webhook

## Gereksinimler
- n8n kurulu bir ortam
- İlgili hizmetler için kimlik bilgileri (OAuth, API anahtarları vb.)
- Workflow dosyası: `2039_Stickynote_Webhook_Automation_Webhook.json`

## Kurulum
1. n8n arayüzünde **"Workflow" → "Import from file"** yolunu izleyerek `2039_Stickynote_Webhook_Automation_Webhook.json` dosyasını içe aktarın.
2. Her node'da gerekli kimlik bilgilerini tanımlayın ve parametreleri kontrol edin.
3. Değişiklikleri kaydedin ve iş akışını etkinleştirin.

## Çalıştırma
- Manuel tetikleyici varsa **Execute workflow** diyerek çalıştırabilirsiniz.
- Webhook veya zamanlayıcı node'u varsa tetiklenmesini bekleyin.
- Sonuçları n8n üzerindeki "Executions" sayfasından takip edin.

**Not:** Bu rehber genel bilgiler sunar. İş akışını kendi gereksinimlerinize göre özelleştirmek için n8n arayüzünde düğüm ayarlarını inceleyin.
