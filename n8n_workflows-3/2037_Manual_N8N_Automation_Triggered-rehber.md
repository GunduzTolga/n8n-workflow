# 2037_Manual_N8N_Automation_Triggered Rehber

Bu rehber `2037_Manual_N8N_Automation_Triggered.json` dosyasındaki iş akışının ayrıntılı kurulumu ve kullanımı için hazırlanmıştır.

## İş Akışının Amacı
v1 helper - Find params with affected expressions

## Gereksinimler
- n8n kurulumu
- Gerekli API anahtarları ve kimlik bilgileri (workflow içerisinde belirtilmiştir)

## Kurulum Adımları
1. n8n arayüzünde **"Workflow" → "Import from file"** seçeneği ile `2037_Manual_N8N_Automation_Triggered.json` dosyasını içe aktarın.
2. İş akışında bulunan node'lar için gerekli kimlik bilgilerini tanımlayın.
3. Parametre ve sabitleri ihtiyacınıza göre düzenleyin.
4. Kaydedip iş akışını etkinleştirin.

## Çalıştırma
İş akışı tetiklendiğinde ilgili adımlar çalışarak v1 helper - find params with affected expressions işlemini otomatikleştirir. Manuel olarak "Execute Workflow" butonu ile ya da tetikleyici node'un koşullarına göre çalıştırılabilir.

## Özelleştirme
- Yeni node'lar ekleyerek farklı servislerle entegrasyon sağlayabilirsiniz.
- Ayarları değiştirerek iş akışını kendi kullanım senaryonuza uyarlayabilirsiniz.
