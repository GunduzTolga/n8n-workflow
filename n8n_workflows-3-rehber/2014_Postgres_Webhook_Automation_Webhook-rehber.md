# Suspicious_login_detection

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
![greynoise](https://i.imgur.com/4vSwTkY.png)
## 🚦 Advanced Threat Prioritization with GreyNoise Data

In this section of the workflow, the integration of GreyNoise data, particularly in the `GreyNoise` node, plays a pivotal role in refining the threat prioritization process. This node's interaction with GreyNoise ensures that each alert is given an appropriate level of attention, based on the nature of the IP address involved.

-   **GreyNoise Analysis for Inbound Threats:** When the `GreyNoise` node identifies an IP address, it queries GreyNoise, considering both NOISE and RIOT datasets ([More here](https://docs.greynoise.io/docs/riot-data)). The response from this node guides the subsequent steps:
    -   **High Priority for Unknown IPs:** The `Check trust level` and `Check classification` nodes act here. If GreyNoise has no data on the IP (noise:false, riot:false), the priority is set high in the `🔴 Priority: HIGH` node. This indicates a potential targeted attack, requiring immediate analyst review.
    -   **Low to Medium Priority for Common Business Services:** IPs identified as part of common business services (riot:true), depending on their trust level and operation status, are assigned low to medium priority by the `🟡 Priority: MEDIUM` and `🟢 Priority: LOW` nodes. This reflects a lower risk of malicious activity.
-   **Classification-Based Prioritization:** The workflow also considers the GreyNoise classification of the IP (malicious, benign, unknown) in the `Check classification` node:
    -   **Malicious IPs:** Medium-high priority, suggesting opportunistic but potentially harmful activity, set in the `🔴 Priority: HIGH` node.
    -   **Benign IPs:** Low priority, as these are usually harmless scans by known actors, designated in the `🟢 Priority: LOW` node.
    -   **Unknown IPs:** Low-medium priority, indicating possibly innocuous but unverified activity, managed by the `🟡 Priority: MEDIUM` node.
-   **Additional Context for Outbound Threats:** For outbound connections, the workflow prioritizes alerts based on whether the IP is a known service provider or a known device scanning the internet, as interpreted by the `GreyNoise` node. High priority is assigned to outbound connections to scanning devices in the `🔴 Priority: HIGH` node, indicating potentially unwanted behavior.


This approach, leveraging GreyNoise's advanced data analytics, showcases n8n's capability to deliver sophisticated cybersecurity solutions. By integrating this intelligent prioritization mechanism, the workflow ensures that your security team focuses on the most pressing threats first, enhancing overall security posture.

### Authentication - No Free Tier Available

To set your API key for GreyNoise, open the `GreyNoise` node, and add a new authentication credential. Choose `Generic Credential Type` then `Header Auth`. Lastly, under `Credential for Header Auth` set the name to `key` and value to your `api key`.

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
