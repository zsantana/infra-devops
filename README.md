# Repositório de ferramentas DevOps 📝  
Esse repositório contém as principais ferramentas e utilitários para integração e aplicação de Prova de Conceito (POC).

## 🚀 Ferramentas Disponíveis

### 📊 **Observabilidade e Monitoramento**

#### **Elastic Stack** (`/elastic/`)
- **Elasticsearch**: Motor de busca e análise de dados
  - Porta: `19200:9200`
  - Configuração sem segurança para desenvolvimento
  - Limite de memória: 2GB

#### **APM** (`/apm/`)
- **APM Server**: Monitoramento de performance de aplicações
- **Elasticsearch**: Armazenamento de dados de APM
- **Kibana**: Visualização e análise de dados

#### **Prometheus + Grafana** (`/prometheus/`)
- **Prometheus**: Sistema de monitoramento e alerta
  - Porta: `9090:9090`
- **Grafana**: Plataforma de visualização de métricas
  - Porta: `3000:3000`
  - Usuário/Senha: configurado via arquivo `config.monitoring`

#### **Zipkin** (`/zipkin/`)
- **Zipkin**: Sistema de rastreamento distribuído
  - Porta: `9411:9411`
  - Interface web para análise de traces

#### **Jaeger** (`/jeager/`)
- **Jaeger**: Plataforma de rastreamento distribuído
  - Porta Web: `16686:16686`
  - Porta Collector: `14268:14268`

### 🗄️ **Bancos de Dados**

#### **PostgreSQL** (`/postgress/`)
- **PostgreSQL**: Banco de dados relacional
  - Porta: `5432:5432`
  - Usuário: `admin` / Senha: `admin`
- **PgAdmin**: Interface web para administração do PostgreSQL
  - Porta: `5050:80`
  - Email: `admin@admin.com` / Senha: `admin`

#### **MongoDB** (`/mongobd/`)
- **MongoDB**: Banco de dados NoSQL
  - Porta: `27017:27017`
  - Usuário: `admin` / Senha: `admin`
- **Mongo Express**: Interface web para MongoDB
  - Porta: `8081:8081`
  - Usuário: `admin` / Senha: `tribes`

#### **Redis** (`/redis/`)
- **PostgreSQL**: Configuração com Redis (arquivo precisa correção)
  - Porta: `15432:5432`
- **PgAdmin**: Interface administrativa
  - Porta: `80:80`

#### **Neo4j** (`/neo4j/`)
- **Neo4j**: Banco de dados de grafos
  - Porta HTTP: `7474:7474`
  - Porta Bolt: `7687:7687`
  - Dados persistidos em: `${HOME}/neo4j/data`

### 🔒 **Segurança e Autenticação**

#### **Keycloak** (`/keycloak/`)
- **Keycloak**: Gerenciamento de identidade e acesso
  - Porta: `7777:8080`
  - Usuário: `admin` / Senha: `admin`
  - Versão legacy com configuração simplificada

### 🌐 **API Gateway e Proxy**

#### **KrakenD** (`/krakend/`)
- **KrakenD**: API Gateway de alta performance
  - Porta: `8080:8080`, `8090:8090`, `1234:1234`
- **Grafana**: Dashboard de métricas (porta `4000:3000`)
- **InfluxDB**: Armazenamento de métricas
- **Jaeger**: Rastreamento distribuído
- **Elasticsearch**: Logs e analytics

#### **Kong** (`/konge/`)
- **Kong**: API Gateway empresarial
- **PostgreSQL**: Banco de dados para Kong
- Inclui migrações e configurações automáticas

### 🔄 **Messaging e Streaming**

#### **Kafka** (`/kafka/`)
- **Zookeeper**: Coordenação de serviços Kafka
  - Porta: `2181:2181`
- **Kafka**: Plataforma de streaming distribuído
  - Porta: `9092:9092`
  - Porta interna: `29092:29092`
- **Kafka Topics UI**: Interface web (porta `8000:8000`)

### 🤖 **Automação e IA**

#### **N8N** (`/n8n/`)
- **N8N**: Plataforma de automação de workflows
  - Porta: `127.0.0.1:5678:5678`
  - Interface web para criação de automações

#### **FlowiseAI** (`/flowiseAI/`)
- **Flowise**: Plataforma low-code para construção de aplicações de IA
  - Configuração via variáveis de ambiente
  - Suporte a múltiplos bancos de dados e APIs

#### **Open WebUI** (`/open-webui/`)
- **Open WebUI**: Interface web para modelos de IA (Ollama)
  - Porta: `3000:8080`
  - Volumes persistentes para dados e modelos

#### **Bolt.diy** (`/bolt.diy/`)
- **Bolt.ai**: Assistente de desenvolvimento com IA
  - Porta: `5173:5173`
  - Suporte a múltiplas APIs de IA (OpenAI, Anthropic, Groq, etc.)

### 🛠️ **DevOps e Desenvolvimento**

#### **Portainer** (`/docker-ui-portainer/`)
- **Portainer**: Interface web para gerenciamento Docker
  - Porta: `9000:9000`
  - Porta Edge: `8000:8000`
  - Interface intuitiva para containers, imagens e volumes

#### **Aplicação Quarkus** (`/app-quarkus/`)
- **Elasticsearch**: Para aplicações Quarkus
  - Porta: `9200:9200`
- **Kibana**: Visualização de logs
  - Porta: `5601:5601`

#### **Node.js** (`/node/`)
- **Node.js**: Aplicação customizada
  - Porta: `8085:8085`
  - Imagem: `my-app-node:latest`

### ☸️ **Kubernetes** (`/minikube/`)
- **Ingress Controller**: Nginx para Minikube
- **Ingress**: Configurações de roteamento

## 📁 **Estrutura do Projeto**

```
/apm/                 - APM Server + Elastic Stack
/app-quarkus/         - Stack para aplicações Quarkus
/bolt.diy/            - Assistente de IA para desenvolvimento
/docker-ui-portainer/ - Interface Docker
/elastic/             - Elasticsearch standalone
/flowiseAI/           - Plataforma IA low-code
/jeager/              - Rastreamento distribuído
/kafka/               - Apache Kafka + Zookeeper
/keycloak/            - Gerenciamento de identidade
/kibana/              - Visualização Elastic
/konge/               - Kong API Gateway
/krakend/             - KrakenD API Gateway
/minikube/            - Configurações Kubernetes
/mongobd/             - MongoDB + Mongo Express
/n8n/                 - Automação de workflows
/neo4j/               - Banco de dados de grafos
/ngnix/               - Nginx proxy
/node/                - Aplicação Node.js
/open-webui/          - Interface para modelos IA
/postgress/           - PostgreSQL + PgAdmin
/prometheus/          - Prometheus + Grafana
/redis/               - Redis cache
/zipkin/              - Rastreamento distribuído
```

## 🚀 **Como usar**

1. Navegue até o diretório da ferramenta desejada
2. Execute o comando: `docker-compose up -d`
3. Acesse a interface web através das portas especificadas
4. Para parar os serviços: `docker-compose down`

## ⚙️ **Requisitos**
- Docker
- Docker Compose
- Portas disponíveis conforme especificado em cada serviço

## 📧 **Contato**
* Email: reinaldojsantana@gmail.com
