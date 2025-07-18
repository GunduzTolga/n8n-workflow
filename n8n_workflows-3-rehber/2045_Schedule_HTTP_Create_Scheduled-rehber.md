# 2045_Schedule_HTTP_Create_Scheduled.json

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# Financial News Recap Workflow

This workflow automates the daily email delivery of curated financial news to a designated recipient at 7:00 AM. It extracts relevant financial news articles, structures the content, and sends it in a concise summary format via Microsoft Outlook.

### Workflow Steps
1. **Schedule Trigger** 
 Sets the workflow to activate daily at 7:00 AM.
2. **Fetch Financial News** 
 Retrieves financial news content from [ft.com](https://www.ft.com/) using an HTTP Request node.
3. **Extract News Headlines and Sections** 
 Using CSS selectors, this node parses specific sections of the HTML page to gather key headlines and sections:
 - Headline #1, Headline #2
 - Editor's Picks
 - etc.
4. **Aggregate News Content** 
 Combines all extracted news sections into a single data set, organizing content under relevant categories.
5. **AI Agent for Summarization** 
 A Google Gemini Chat Model generates a structured summary in HTML format, optimized to provide investors with a clear market overview.
6. **Email Dispatch** 
 Sends the summarized content via Microsoft Outlook with a subject "Financial news from today," formatted in HTML for clarity and readability.

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
