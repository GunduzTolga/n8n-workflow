# 2052_Telegram_Splitout_Automation_Scheduled Rehber

Bu rehber **🤖🧑‍💻 AI Agent for Top n8n Creators Leaderboard Reporting** isimli iş akışının kurulumu ve kullanımını açıklar.

## Genel Bakış
Bu iş akışı şu node türlerini içerir: @n8n/n8n-nodes-langchain.agent,@n8n/n8n-nodes-langchain.chainLlm,@n8n/n8n-nodes-langchain.lmChatGoogleGemini,@n8n/n8n-nodes-langchain.lmChatOpenAi,@n8n/n8n-nodes-langchain.toolWorkflow,n8n-nodes-base.aggregate,n8n-nodes-base.convertToFile,n8n-nodes-base.executeWorkflowTrigger,n8n-nodes-base.gmail,n8n-nodes-base.googleDrive,n8n-nodes-base.httpRequest,n8n-nodes-base.limit,n8n-nodes-base.markdown,n8n-nodes-base.merge,n8n-nodes-base.readWriteFile,n8n-nodes-base.scheduleTrigger,n8n-nodes-base.set,n8n-nodes-base.sort,n8n-nodes-base.splitOut,n8n-nodes-base.stickyNote,n8n-nodes-base.telegram

## Gereksinimler
- n8n kurulu bir ortam
- İlgili hizmetler için kimlik bilgileri (OAuth, API anahtarları vb.)
- Workflow dosyası: `2052_Telegram_Splitout_Automation_Scheduled.json`

## Kurulum
1. n8n arayüzünde **"Workflow" → "Import from file"** yolunu izleyerek `2052_Telegram_Splitout_Automation_Scheduled.json` dosyasını içe aktarın.
2. Her node'da gerekli kimlik bilgilerini tanımlayın ve parametreleri kontrol edin.
3. Değişiklikleri kaydedin ve iş akışını etkinleştirin.

## Çalıştırma
- Manuel tetikleyici varsa **Execute workflow** diyerek çalıştırabilirsiniz.
- Webhook veya zamanlayıcı node'u varsa tetiklenmesini bekleyin.
- Sonuçları n8n üzerindeki "Executions" sayfasından takip edin.

**Not:** Bu rehber genel bilgiler sunar. İş akışını kendi gereksinimlerinize göre özelleştirmek için n8n arayüzünde düğüm ayarlarını inceleyin.
