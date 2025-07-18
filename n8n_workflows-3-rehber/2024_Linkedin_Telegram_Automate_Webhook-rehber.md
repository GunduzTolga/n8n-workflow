# Linkedin Automation

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# 📢 Auto-Post Medium Articles to LinkedIn with Telegram Alerts

This n8n workflow automates your LinkedIn posting by fetching articles from [medium.com](medium.com) twice a day (9:00 AM and 7:00 PM), ensuring consistent content sharing without manual effort.

To prevent duplicates, it stores posted article IDs in Airtable. It also sends a Telegram message after every successful post, so you stay updated.

---

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
