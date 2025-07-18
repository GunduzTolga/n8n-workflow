# 1999_Manual_HTTP_Import_Webhook Rehber

Bu rehber `1999_Manual_HTTP_Import_Webhook.json` dosyasındaki iş akışının ayrıntılı kurulumu ve kullanımı için hazırlanmıştır.

## İş Akışının Amacı
Upload video to drive via google script

## Gereksinimler
- n8n kurulumu
- Gerekli API anahtarları ve kimlik bilgileri (workflow içerisinde belirtilmiştir)

## Kurulum Adımları
1. n8n arayüzünde **"Workflow" → "Import from file"** seçeneği ile `1999_Manual_HTTP_Import_Webhook.json` dosyasını içe aktarın.
2. İş akışında bulunan node'lar için gerekli kimlik bilgilerini tanımlayın.
3. Parametre ve sabitleri ihtiyacınıza göre düzenleyin.
4. Kaydedip iş akışını etkinleştirin.

## Çalıştırma
İş akışı tetiklendiğinde ilgili adımlar çalışarak upload video to drive via google script işlemini otomatikleştirir. Manuel olarak "Execute Workflow" butonu ile ya da tetikleyici node'un koşullarına göre çalıştırılabilir.

## Özelleştirme
- Yeni node'lar ekleyerek farklı servislerle entegrasyon sağlayabilirsiniz.
- Ayarları değiştirerek iş akışını kendi kullanım senaryonuza uyarlayabilirsiniz.
