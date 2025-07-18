# 🗨️Ollama Chat

Bu n8n workflow dosyası, otomasyon adımlarını içeren bir JSON dosyasıdır.
Aşağıda bu workflow'un amacı ve temel kullanımı anlatılmıştır.

## Workflow Açıklaması
# 🦙 Ollama Chat Workflow

A simple N8N workflow that integrates Ollama LLM for chat message processing and returns a structured JSON object.

## Overview
This workflow creates a chat interface that processes messages using the Llama 3.2 model through Ollama. When a chat message is received, it gets processed through a basic LLM chain and returns a response.

## Components
- **Trigger Node**
- **Processing Node**
- **Model Node**
- **JSON to Object Node**
- **Structured Response Node**
- **Error Response Node**

## Workflow Structure
1. The chat trigger node receives incoming messages
2. Messages are passed to the Basic LLM Chain
3. The Ollama Model processes the input using Llama 3.2
4. Responses are returned through the chain

## Prerequisites
- N8N installation
- Ollama setup with Llama 3.2 model
- Valid Ollama API credentials

## Configuration
1. Set up the Ollama API credentials in N8N
2. Ensure the Llama 3.2 model is available in your Ollama installation

## Kullanım Adımları
1. n8n arayüzünde **Import** seçeneğini kullanarak bu JSON dosyasını içe aktarın.
2. Gerekli kimlik bilgilerini ve parametreleri kendi ortamınıza göre güncelleyin.
3. Workflow'u **Activate** ederek otomasyonu çalıştırın.
