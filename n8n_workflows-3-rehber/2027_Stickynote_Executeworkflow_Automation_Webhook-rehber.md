# OpenSea Analytics Agent Tool

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# OpenSea Analytics Agent Tool (n8n Workflow) Guide

## 🚀 Workflow Overview
The **OpenSea Analytics Agent Tool** is an AI-powered NFT analytics system built using **n8n**. It integrates directly with **OpenSea's API** to fetch and analyze market data, collection stats, wallet transactions, and event logs. This tool is designed to provide real-time insights into the NFT ecosystem.

### 🎯 **Key Features**:
- Retrieve **collection statistics** (volume, floor price, market cap, etc.).
- Track **NFT events** (sales, transfers, listings, bids, redemptions).
- Monitor **wallet transactions** (account-specific event tracking).
- Fetch **NFT-specific historical transactions** by smart contract and token ID.
- Ensure **API compliance**, preventing invalid queries and errors.

---

## 🔗 **Nodes & Functions**
Below is a breakdown of each node in the workflow and its function.

### **1️⃣ Analytics Agent Brain**
- **Type**: AI Language Model (GPT-4o Mini)
- **Purpose**: Processes API requests and interprets OpenSea analytics queries.

### **2️⃣ Analytics Agent Memory**
- **Type**: AI Memory Buffer
- **Purpose**: Stores session data to maintain context for multiple queries.

### **3️⃣ OpenSea Get Collection Stats**
- **Type**: API Request
- **Endpoint**: `/api/v2/collections/{collection_slug}/stats`
- **Function**: Fetches collection-wide statistics such as floor price, total volume, number of sales, and market cap.

### **4️⃣ OpenSea Get Events**
- **Type**: API Request
- **Endpoint**: `/api/v2/events`
- **Function**: Retrieves NFT-related events within a given timeframe, filtered by event type (sale, transfer, listing, etc.).

### **5️⃣ OpenSea Get Events by Account**
- **Type**: API Request
- **Endpoint**: `/api/v2/events/accounts/{address}`
- **Function**: Tracks all NFT events related to a specific wallet address.

### **6️⃣ OpenSea Get Events by Collection**
- **Type**: API Request
- **Endpoint**: `/api/v2/events/collection/{collection_slug}`
- **Function**: Fetches the latest events for a particular NFT collection.

### **7️⃣ OpenSea Get Events by NFT**
- **Type**: API Request
- **Endpoint**: `/api/v2/events/chain/{chain}/contract/{address}/nfts/{identifier}`
- **Function**: Retrieves all historical events for a single NFT based on blockchain, smart contract, and token ID.

---

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
