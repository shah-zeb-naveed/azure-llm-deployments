# azure-llm-deployments

This repository contains the deployment commands and manifest files for deploying Hugging Face Text Generation Inference (both on Azure Container Instance as well as Azure Kubernetes Service).

For AKS in specific, following components are used:

Azure Resources:
- Azure Container Registry
- Azure Cosmos DB (MongoDB vCore)

Frontend:
  - Hugging Face Chat UI

LLM Server:
  - Hugging Face Text Generation Inference

Reverse Proxy:
  - K8S Nginx Ingress Controller (Recommended Method for AKS)
  - Sidecar pattern
    - Nginx
    - Caddy

Full guides published on Medium: https://medium.com/@shahzebnaveed