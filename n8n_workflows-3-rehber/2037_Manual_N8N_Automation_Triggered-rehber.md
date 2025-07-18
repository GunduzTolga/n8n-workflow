# v1 helper - Find params with affected expressions

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
## v1 Helper

ℹ️ This workflow is to be run **after upgrading to n8n v1**.

This workflow returns all locations where a node in an active workflow contains a parameter using an **expression extension affected by [v1 changes](https://github.com/n8n-io/n8n/pull/6435)**. For every location, please check that the workflow still behaves as intended.

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
