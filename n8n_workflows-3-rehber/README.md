# n8n Workflows 3 Rehber

Bu klasörde bulunan her Markdown dosyası, aynı isimdeki JSON workflow dosyasının kullanım rehberini içermektedir. Rehberlerin amacı, bu workflow'ları n8n üzerinde çalıştırmak isteyen kullanıcılara adım adım yol göstermektir.

Aynı adları taşıyan `../n8n_workflows-3` klasöründeki JSON dosyalarını n8n editörüne içe aktararak otomasyonları kurabilirsiniz. Her rehberin sonunda yer alan **Detaylı Kullanım Kılavuzu** bölümü tüm workflow'lar için ortak adımları sunar.

## Genel İzlenecek Yol
1. Bilgisayarınıza n8n kurun veya Docker ile çalıştırın.
2. İlgili JSON dosyasını n8n editörüne içe aktarın.
3. Her node için gerekli kimlik bilgilerini ve parametreleri düzenleyin.
4. Workflow'u test edin, sorunsuz çalışıyorsa aktive edin.

Her workflow'un kendine özel gereksinimleri olabileceğinden, Markdown dosyalarında **Özel Ayarlar** başlığı altında ek bilgiler bulabilirsiniz. Yeni başlayanlar için öncelikle bu README ve sonrasında ilgili rehberleri incelemek, otomasyonları başarıyla çalıştırmak için yeterli olacaktır.

## Örnek Kurulum Senaryosu

1. `docker run -it --rm -p 5678:5678 n8nio/n8n` komutu ile n8n'i çalıştırın.
2. Tarayıcınızda `http://localhost:5678` açıldığında boş bir editör göreceksiniz.
3. Bu repodan bir JSON dosyası indirip **Import** menüsü ile editöre ekleyin.
4. Her node üzerinde sarı uyarılar varsa gerekli **Credentials** seçilmemiş demektir. "Add New" diyerek API anahtarlarınızı ekleyin.
5. Sol üstteki **Execute Workflow** butonuna tıklayarak test edin.
6. İşlemler beklendiği gibi ilerliyorsa sağ üstten **Active** konumuna getirerek otomasyonu devreye alın.

Kurulum sırasında hatayla karşılaşırsanız `Executions` menüsünden hata kayıtlarını inceleyebilir veya rehber dosyalarındaki ek notlara göz atabilirsiniz.

### İpuçları ve Hata Çözümleri
* Workflow'u ilk kez çalıştırmadan önce `Credentials` bölümünde eksik kalmadığından emin olun.
* Docker kullanıyorsanız verileri kalıcı hale getirmek için `-v ~/.n8n:/home/node/.n8n` parametresini ekleyin.
* Webhook içeren örneklerde URL'yi kopyalayıp test isteği göndermeden önce **Execute Workflow** butonuna basmayı unutmayın.
