# 2049_Limit_Splitout_Automate_Webhook Rehber

Bu rehber **🔥📈🤖 AI Agent for n8n Creators Leaderboard - Find Popular Workflows** isimli iş akışının kurulumu ve kullanımını açıklar.

## Genel Bakış
Bu iş akışı şu node türlerini içerir: @n8n/n8n-nodes-langchain.agent,@n8n/n8n-nodes-langchain.chatTrigger,@n8n/n8n-nodes-langchain.lmChatOllama,@n8n/n8n-nodes-langchain.lmChatOpenAi,@n8n/n8n-nodes-langchain.memoryBufferWindow,@n8n/n8n-nodes-langchain.toolWorkflow,n8n-nodes-base.aggregate,n8n-nodes-base.convertToFile,n8n-nodes-base.executeWorkflowTrigger,n8n-nodes-base.filter,n8n-nodes-base.httpRequest,n8n-nodes-base.limit,n8n-nodes-base.merge,n8n-nodes-base.readWriteFile,n8n-nodes-base.set,n8n-nodes-base.sort,n8n-nodes-base.splitOut,n8n-nodes-base.stickyNote

## Gereksinimler
- n8n kurulu bir ortam
- İlgili hizmetler için kimlik bilgileri (OAuth, API anahtarları vb.)
- Workflow dosyası: `2049_Limit_Splitout_Automate_Webhook.json`

## Kurulum
1. n8n arayüzünde **"Workflow" → "Import from file"** yolunu izleyerek `2049_Limit_Splitout_Automate_Webhook.json` dosyasını içe aktarın.
2. Her node'da gerekli kimlik bilgilerini tanımlayın ve parametreleri kontrol edin.
3. Değişiklikleri kaydedin ve iş akışını etkinleştirin.

## Çalıştırma
- Manuel tetikleyici varsa **Execute workflow** diyerek çalıştırabilirsiniz.
- Webhook veya zamanlayıcı node'u varsa tetiklenmesini bekleyin.
- Sonuçları n8n üzerindeki "Executions" sayfasından takip edin.

**Not:** Bu rehber genel bilgiler sunar. İş akışını kendi gereksinimlerinize göre özelleştirmek için n8n arayüzünde düğüm ayarlarını inceleyin.
