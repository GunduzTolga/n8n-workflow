# n8n Workflows 3 Rehber

Bu klasorde bulunan her Markdown dosyasi, ayni isimdeki JSON workflow dosyasinin kullanim rehberini icermektedir. Rehberlerin amaci, bu workflow'lari n8n uzerinde calistirmak isteyen kullanicilara adim adim yol gostermektir.

Ayni adlari tasiyan `../n8n_workflows-3` klasorundaki JSON dosyalarini n8n editore import ederek otomasyonlari kurabilirsiniz. Her rehberin sonunda yer alan **Detayli Kullanim Kilavuzu** bolumu tum workflow'lar icin ortak adimlari sunar.

## Genel Izlenecek Yol
1. Bilgisayariniza n8n kurun veya Docker ile calistirin.
2. Ilgili JSON dosyasini n8n editore import edin.
3. Her node icin gerekli kimlik bilgilerini ve parametreleri duzenleyin.
4. Workflow'u test edin, sorunsuz calisiyorsa aktive edin.

Her workflow'un kendine ozel gereksinimleri olabileceginden, Markdown dosyalarinda **Ozel Ayarlar** basligi altinda ek bilgiler bulabilirsiniz. Yeni baslayanlar icin oncelikle bu README ve sonrasinda ilgili rehberleri incelemek, otomasyonlari basariyla calistirmak icin yeterli olacaktir.

## Ornek Kurulum Senaryosu

1. `docker run -it --rm -p 5678:5678 n8nio/n8n` komutu ile n8n'i calistirin.
2. Tarayicinizda `http://localhost:5678` acildiginda bos bir editor goreceksiniz.
3. Bu repodan bir JSON dosyasi indirip **Import** menusu ile editor e ekleyin.
4. Her node uzerinde sari uyarilar varsa gerekli **Credentials** secilmemis demektir. "Add New" diyerek API anahtarlarinizi ekleyin.
5. Sol ustteki **Execute Workflow** butonuna tiklayarak test edin.
6. Islemler beklendigi gibi ilerliyorsa sag ustten **Active** konumuna getirerek otomasyonu devreye alin.

Kurulum sirasinda hatayla karsilasirsaniz `Executions` menusunden hata kayitlarini inceleyebilir veya rehber dosyalarindaki ek notlara goz atabilirsiniz.
