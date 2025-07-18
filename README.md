# n8n Workflows

Bu repoda n8n icin hazirlanmis cesitli otomasyon ornekleri ve bunlara ait rehber dokumanlari bulunur. Workflow dosyalari `.json` uzantili olup `n8n` editorunde import edilerek kullanilabilir. Detayli aciklamalar icin `n8n_workflows-3-rehber` klasorundaki Markdown dosyalarini inceleyebilirsiniz.

## Icerik

- `n8n_workflows-1`, `n8n_workflows-2` ve `n8n_workflows-3` klasorlerinde farkli seviyelerde ornek JSON otomasyonlari bulunur.
- `n8n_workflows-3-rehber` klasoru her bir JSON dosyasi icin hazirlanan detayli kullanim kilavuzlarini icerir.

## Hizli Baslangic

1. **n8n'i kurun**
   - `npm`: `npx n8n` komutuyla yerel ortaminiza kurabilirsiniz.
   - Docker: `docker run -it --rm -p 5678:5678 n8nio/n8n`
2. Tarayicinizdan `http://localhost:5678` adresine ulasin.
3. Import etmek istediginiz JSON dosyasini editorde **Import** menusuyle yukleyin.
4. Rehberde belirtilen **Credentials** ve diger ayarlari yapin.
5. **Execute Workflow** diyerek testi gerceklestirin, sorunsuz calisiyorsa **Active** durumuna getirin.

Yeni baslayanlar icin `n8n_workflows-3-rehber/README.md` dosyasinda daha ayrintili bilgiler mevcuttur.
