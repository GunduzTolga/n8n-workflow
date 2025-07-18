# 2009_Stickynote_Automate_Webhook Rehber

Bu rehber **🌐🪛 AI Agent Chatbot with Jina.ai Webpage Scraper** isimli iş akışının kurulumu ve kullanımını açıklar.

## Genel Bakış
Bu iş akışı şu node türlerini içerir: @n8n/n8n-nodes-langchain.agent,@n8n/n8n-nodes-langchain.chatTrigger,@n8n/n8n-nodes-langchain.lmChatOpenAi,@n8n/n8n-nodes-langchain.memoryBufferWindow,@n8n/n8n-nodes-langchain.toolHttpRequest,n8n-nodes-base.stickyNote

## Gereksinimler
- n8n kurulu bir ortam
- İlgili hizmetler için kimlik bilgileri (OAuth, API anahtarları vb.)
- Workflow dosyası: `2009_Stickynote_Automate_Webhook.json`

## Kurulum
1. n8n arayüzünde **"Workflow" → "Import from file"** yolunu izleyerek `2009_Stickynote_Automate_Webhook.json` dosyasını içe aktarın.
2. Her node'da gerekli kimlik bilgilerini tanımlayın ve parametreleri kontrol edin.
3. Değişiklikleri kaydedin ve iş akışını etkinleştirin.

## Çalıştırma
- Manuel tetikleyici varsa **Execute workflow** diyerek çalıştırabilirsiniz.
- Webhook veya zamanlayıcı node'u varsa tetiklenmesini bekleyin.
- Sonuçları n8n üzerindeki "Executions" sayfasından takip edin.

**Not:** Bu rehber genel bilgiler sunar. İş akışını kendi gereksinimlerinize göre özelleştirmek için n8n arayüzünde düğüm ayarlarını inceleyin.
