# Build Custom AI Agent with LangChain & Gemini (Self-Hosted)

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
👇 **Prompt Engineering**
   - Define agent personality and conversation structure in the `Construct & Execute LLM Prompt` node's template variable  
   - ⚠️ Template must preserve `{chat_history}` and `{input}` placeholders for proper LangChain operation

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
