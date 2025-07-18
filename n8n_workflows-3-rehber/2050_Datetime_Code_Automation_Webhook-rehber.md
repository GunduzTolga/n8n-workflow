# Testing Mulitple Local LLM with LM Studio

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
## 🧠Text Analysis
### Readability Score Ranges:
When testing model responses, readability scores can range across different levels. Here’s a breakdown:

- **90–100**: Very easy to read (5th grade or below)
- **80–89**: Easy to read (6th grade)
- **70–79**: Fairly easy to read (7th grade)
- **60–69**: Standard (8th to 9th grade)
- **50–59**: Fairly difficult (10th to 12th grade)
- **30–49**: Difficult (College)
- **0–29**: Very difficult (College graduate)
- **Below 0**: Extremely difficult (Post-graduate level)

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
