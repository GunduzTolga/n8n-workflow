# n8n Workflows

Bu repoda n8n için hazırlanmış çeşitli otomasyon örnekleri ve bunlara ait rehber dokümanları bulunur. Workflow dosyaları `.json` uzantılı olup `n8n` editöründe içe aktarılarak kullanılabilir. Detaylı açıklamalar için `n8n_workflows-3-rehber` klasöründeki Markdown dosyalarını inceleyebilirsiniz.

## İçerik

- `n8n_workflows-1`, `n8n_workflows-2` ve `n8n_workflows-3` klasorlerinde farkli seviyelerde ornek JSON otomasyonlari bulunur.
- `n8n_workflows-3-rehber` klasoru her bir JSON dosyasi icin hazirlanan detayli kullanim kilavuzlarini icerir.

## Hızlı Başlangıç

1. **n8n'i kurun**
   - `npm`: `npx n8n` komutuyla yerel ortamınıza kurabilirsiniz.
   - Docker: `docker run -it --rm -p 5678:5678 n8nio/n8n`
2. Tarayıcınızdan `http://localhost:5678` adresine ulaşın.
3. İçe aktarmak istediğiniz JSON dosyasını editörde **Import** menüsüyle yükleyin.
4. Rehberde belirtilen **Credentials** ve diğer ayarları yapın.
5. **Execute Workflow** diyerek testi gerçekleştirin, sorunsuz çalışıyorsa **Active** durumuna getirin.

Yeni başlayanlar için `n8n_workflows-3-rehber/README.md` dosyasında daha ayrıntılı bilgiler mevcuttur.

### Ek İpuçları
* Docker kullanıyorsanız verilerin kaybolmaması için komutu `-v ~/.n8n:/home/node/.n8n` parametresiyle çalıştırabilirsiniz.
* Her node için gereken kimlik bilgilerini **Credentials** menüsünden "Create New" seçeneğiyle eklemeyi unutmayın.
* Local kurulumda 5678 portunun güvenlik duvarında açık olduğundan emin olun.
