# 2028_Discord_Hunter_Automate_Triggered Rehber

Bu rehber **My workflow** isimli iş akışının kurulumu ve kullanımını açıklar.

## Genel Bakış
Bu iş akışı şu node türlerini içerir: n8n-nodes-base.discord,n8n-nodes-base.formTrigger,n8n-nodes-base.gmail,n8n-nodes-base.googleSheets,n8n-nodes-base.hunter,n8n-nodes-base.if,n8n-nodes-base.noOp,n8n-nodes-base.stickyNote

## Gereksinimler
- n8n kurulu bir ortam
- İlgili hizmetler için kimlik bilgileri (OAuth, API anahtarları vb.)
- Workflow dosyası: `2028_Discord_Hunter_Automate_Triggered.json`

## Kurulum
1. n8n arayüzünde **"Workflow" → "Import from file"** yolunu izleyerek `2028_Discord_Hunter_Automate_Triggered.json` dosyasını içe aktarın.
2. Her node'da gerekli kimlik bilgilerini tanımlayın ve parametreleri kontrol edin.
3. Değişiklikleri kaydedin ve iş akışını etkinleştirin.

## Çalıştırma
- Manuel tetikleyici varsa **Execute workflow** diyerek çalıştırabilirsiniz.
- Webhook veya zamanlayıcı node'u varsa tetiklenmesini bekleyin.
- Sonuçları n8n üzerindeki "Executions" sayfasından takip edin.

**Not:** Bu rehber genel bilgiler sunar. İş akışını kendi gereksinimlerinize göre özelleştirmek için n8n arayüzünde düğüm ayarlarını inceleyin.
