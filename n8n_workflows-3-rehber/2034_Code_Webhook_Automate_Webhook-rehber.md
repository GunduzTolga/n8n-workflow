# OIDC client workflow

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
In this set, you have to retrieve from your identity provider : 
- auth url
- token url
- userinfo url
- the client id you created for this flow
- scopes to use, at least "openid" scope
if you do not want to use PKCE, you have to fill : 
- client_secret
- redirect_uri (which is the webhook uri)

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
