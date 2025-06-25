# ai-book-stack

Stack Docker pour :
- n8n (Génération IA)
- Ollama (modèles locaux)
- Frontend React statique
- Traefik (HTTPS et reverse proxy)

## Installation via cloud-init

Cochez le `Cloud config` :
```yaml
#cloud-config
package_update: true
package_upgrade: true
packages:
  - docker.io
  - docker-compose
runcmd:
  - git clone https://github.com/Fully57/ai-book-stack.git /opt/bookstack
  - cd /opt/bookstack
  - cp .env.example .env
  - chmod +x setup.sh
  - ./setup.sh
