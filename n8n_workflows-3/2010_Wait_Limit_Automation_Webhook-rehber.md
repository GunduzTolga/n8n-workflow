# 2010_Wait_Limit_Automation_Webhook Rehber

Bu rehber **💡🌐 Essential Multipage Website Scraper with Jina.ai** isimli iş akışının kurulumu ve kullanımını açıklar.

## Genel Bakış
Bu iş akışı şu node türlerini içerir: n8n-nodes-base.code,n8n-nodes-base.filter,n8n-nodes-base.googleDrive,n8n-nodes-base.httpRequest,n8n-nodes-base.limit,n8n-nodes-base.manualTrigger,n8n-nodes-base.set,n8n-nodes-base.splitInBatches,n8n-nodes-base.splitOut,n8n-nodes-base.stickyNote,n8n-nodes-base.wait,n8n-nodes-base.xml

## Gereksinimler
- n8n kurulu bir ortam
- İlgili hizmetler için kimlik bilgileri (OAuth, API anahtarları vb.)
- Workflow dosyası: `2010_Wait_Limit_Automation_Webhook.json`

## Kurulum
1. n8n arayüzünde **"Workflow" → "Import from file"** yolunu izleyerek `2010_Wait_Limit_Automation_Webhook.json` dosyasını içe aktarın.
2. Her node'da gerekli kimlik bilgilerini tanımlayın ve parametreleri kontrol edin.
3. Değişiklikleri kaydedin ve iş akışını etkinleştirin.

## Çalıştırma
- Manuel tetikleyici varsa **Execute workflow** diyerek çalıştırabilirsiniz.
- Webhook veya zamanlayıcı node'u varsa tetiklenmesini bekleyin.
- Sonuçları n8n üzerindeki "Executions" sayfasından takip edin.

**Not:** Bu rehber genel bilgiler sunar. İş akışını kendi gereksinimlerinize göre özelleştirmek için n8n arayüzünde düğüm ayarlarını inceleyin.
