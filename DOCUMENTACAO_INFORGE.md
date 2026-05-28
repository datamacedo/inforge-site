# 📘 Documentação Completa - InForge

**Data de Criação**: 23 de maio de 2026  
**Status**: ✅ Live em Produção  
**Última Atualização**: 24 de maio de 2026

---

## 🌐 URLs Importantes

### Sites Live
- **Vercel (URL temporária)**: https://inforge-site.vercel.app
- **Domínio Custom**: https://inforge.com.br (DNS em propagação)
- **Blog**: https://inforge-site.vercel.app/blog.html
- **Artigos**: https://inforge-site.vercel.app/posts/post-1.html até post-22.html

### Plataformas de Gerenciamento
- **GitHub Repository**: https://github.com/datamacedo/inforge-site
- **Vercel Project**: https://vercel.com (projeto: inforge-site)
- **Google Sheets Analytics**: [Link da sua planilha Google Sheets]
- **Registro.com.br**: Domínio inforge.com.br registrado

---

## 📁 Estrutura do Projeto

```
inforge/
├── index.html                 # Landing page (antes: inforge.html)
├── blog.html                  # Página de índice do blog
├── assets/
│   └── logo-inforge.svg       # Logo do site
├── posts/
│   ├── post-1.html            # 5 Erros ao Qualificar Leads (e Como Evitar)
│   ├── post-2.html            # Como Organizar Seus Dados para Vender Mais
│   ├── post-3.html            # Dashboards que Realmente Funcionam
│   ├── post-4.html            # Por Que Leads Interessados Não Compram
│   ├── post-5.html            # O Verdadeiro Custo de Perder um Lead Qualificado
│   ├── post-6.html            # Alinhamento Comercial: Sales & Marketing
│   ├── post-7.html            # Timing é Tudo: Por Que seu Lead Não Está Pronto
│   ├── post-8.html            # DBA vs Engenheiro de Dados
│   ├── post-9.html            # O Custo Invisível de Conectar DW Direto na Produção
│   ├── post-10.html           # KPIs Estratégicos vs Operacionais
│   ├── post-11.html           # Por Que Empresas Decidem no Escuro
│   ├── post-12.html           # Liderança Decide com Dados: Governança
│   ├── post-13.html           # BI com Governança: O Diferencial
│   ├── post-14.html           # Antes do Dashboard: Bronze, Silver, Gold, Premium
│   ├── post-15.html           # Os Dados Que Ninguém Quer: Dores Entre Negócio e TI
│   ├── post-16.html           # Antes Da IA: Por Que Sua Empresa Não Está Pronta
│   ├── post-17.html           # BI É Um Conceito, Não Uma Ferramenta
│   ├── post-18.html           # A IA Não Vai Te Substituir: Mas Quem Usa IA Pode
│   ├── post-19.html           # Como Começar um Processo: Passo a Passo
│   ├── post-20.html           # Mapeamento de Processos: Desperdício Invisível
│   ├── post-21.html           # O Que Automatizar vs O Que Deixar Manual
│   └── post-22.html           # Começou Bem, Até que Alguém Ficou Sobrecarregado
└── .git/                      # Repositório Git (versionamento)
```

---

## 📊 Categorias do Blog

### 1. **Leads & Vendas** (5 artigos)
- post-1: 5 Erros ao Qualificar Leads
- post-4: Por Que Leads Interessados Não Compram
- post-5: O Verdadeiro Custo de Perder um Lead
- post-6: Alinhamento Comercial: Sales & Marketing
- post-7: Timing é Tudo

### 2. **Dados & Organização** (5 artigos)
- post-2: Como Organizar Seus Dados para Vender Mais
- post-3: Dashboards que Realmente Funcionam
- post-8: DBA vs Engenheiro de Dados
- post-9: O Custo Invisível de Conectar DW Direto
- post-14: Bronze, Silver, Gold, Premium

### 3. **Estratégia & Governança** (8 artigos)
- post-10: KPIs Estratégicos vs Operacionais
- post-11: Por Que Empresas Decidem no Escuro
- post-12: Liderança Decide com Dados
- post-13: BI com Governança
- post-15: Os Dados Que Ninguém Quer
- post-16: Antes Da IA
- post-17: BI É Um Conceito, Não Uma Ferramenta
- post-18: A IA Não Vai Te Substituir

### 4. **Processos & Eficiência** (4 artigos)
- post-19: Como Começar um Processo
- post-20: Mapeamento de Processos
- post-21: O Que Automatizar vs Deixar Manual
- post-22: Falta de Processo

---

## 🔧 Funcionalidades Implementadas

### ✅ Landing Page (index.html)
- Hero section com tagline "Transforme seus dados em decisões inteligentes"
- 5 cards de desafios de clientes
- 8 cards de soluções (com onclick para pré-preenchimento de formulário)
- Formulário WhatsApp com 5 etapas
- Seção de casos de sucesso com métricas
- Processo de implementação em 4 passos
- Call-to-action sections
- Navegação responsiva com hamburger menu

### ✅ Blog (blog.html)
- Sidebar com categorias expansíveis
- Grid de artigos com cards
- Links diretos para posts individuais
- Hero section com emoji e tagline inspirador

### ✅ Posts Individuais (post-X.html)
- **Contador de visualizações** 👁️
  - Mostra quantas pessoas leram
  - Usa localStorage para fallback
  
- **Rastreamento de Leitores** 📍
  - IP do visitante
  - País e cidade (via ipapi.co)
  - Data e hora
  - Integração com Google Apps Script
  
- **Formulário de Newsletter** 📧
  - Campo de email obrigatório
  - Botão "Inscrever"
  - Mensagem de sucesso em verde
  - Salva emails no Google Sheets

---

## 🔌 Integrações

### Google Apps Script
**URL do Webhook**: https://script.google.com/macros/s/AKfycbzH39hmv2qEISLtRlueAKxnaLAdWdEJXZfZ7pwRnaZjxthTF5nbCDdVrJpA7-13q6ow/exec

**Funções**:
- `doPost(e)` - Recebe visualizações e newsletters
- `doGet(e)` - Teste de conectividade
- `handleView(data)` - Registra visualizações com geolocalização
- `handleNewsletter(data)` - Registra emails de newsletter
- `initializeSheets()` - Cria abas automaticamente

**Abas do Google Sheets**:
1. **Visualizações**: Artigo | Data/Hora | IP | País | Cidade | Visualizações
2. **Newsletter**: Email | Data | Artigo (origem) | Status

### WhatsApp Integration
- Formulário 5 etapas: Solução > Empresa > Email > Telefone > Confirmação
- Pré-preenchimento via onclick dos cards
- Redirecionamento via WhatsApp Web API
- Número: [Configure seu número WhatsApp]

---

## 🚀 Deployment & DevOps

### GitHub
- **Repositório**: datamacedo/inforge-site
- **Branch**: main
- **Commits Recent**:
  - 1983d30: Fix webhook URL (24/05/2026)
  - 448b331: Add analytics to all posts (24/05/2026)
  - 0a11a05: Rename inforge.html to index.html

### Vercel
- **Project**: inforge-site
- **Auto-deploy**: ✅ Ativado
- **Domínios**:
  - inforge-site.vercel.app (✅ Ativo)
  - inforge.com.br (⏳ DNS em propagação)
- **Deploy automático** ao fazer push no GitHub

### DNS (Registro.com.br)
- **Domínio**: inforge.com.br
- **Nameservers Vercel**:
  - ns1.vercel-dns.com
  - ns2.vercel-dns.com
- **Status**: Em propagação (até 48 horas)

---

## 📋 Como Fazer Atualizações Futuras

### Adicionar Novo Artigo
```bash
1. Crie post-23.html baseado no template de outro post
2. Atualize blog.html com novo link
3. Execute: git add . && git commit -m "feat: Add post-23" && git push
4. Vercel faz deploy automaticamente
```

### Atualizar Google Apps Script
```bash
1. Acesse Extensions > Apps Script na planilha
2. Edite o código
3. Clique Deploy > New Deployment
4. Copie a nova URL
5. Execute script Python para atualizar todos os posts
6. Faça push das mudanças
```

### Verificar Analytics
```bash
1. Abra: InForge - Analytics & Newsletter (Google Sheets)
2. Aba "Visualizações": Ver quem visitou, de onde, quando
3. Aba "Newsletter": Ver emails cadastrados
```

---

## 🎨 Design & Branding

### Cores
- **Background**: #07080d (quase preto)
- **Card**: #10131c (cinza escuro)
- **Primary Blue**: #2979ff
- **Text**: #eef2ff (branco suave)
- **Muted**: #8b95ad (cinza)

### Tipografia
- **Headlines**: Exo 2 (700 weight)
- **UI Text**: Rajdhani (600 weight)
- **Body**: Exo 2 (400 weight)

### Componentes
- Botões com clip-path (efeito cortado)
- Cards com border azul sutil
- Highlights com background azul 10% opacity
- Newsletter form com input elegante

---

## 👤 Informações Pessoais

- **Email**: brunoluis.macedo@gmail.com
- **GitHub**: datamacedo
- **Domínio**: inforge.com.br (Registro.com.br)

---

## 📞 Contatos & Credenciais

### Google Sheets
- **Planilha**: InForge - Analytics & Newsletter
- **ID**: 1GrfpH4KIZ7WqfjZsh_pit6d3PuDNweHvTG7BUzcw4P0
- **Acesso**: Gmail do Bruno

### GitHub
- **Repositório**: https://github.com/datamacedo/inforge-site
- **Autenticação**: GitHub OAuth (browser login)

### Vercel
- **Conta**: bruno@inforge.com.br (ou seu email Google)
- **Projeto**: inforge-site
- **Auto-deploy**: Ativado via GitHub

---

## ✅ Checklist de Funcionalidades

- [x] Landing page completa
- [x] Blog com 22 artigos
- [x] 4 categorias de conteúdo
- [x] Contador de visualizações
- [x] Rastreamento de leitores (IP + geolocalização)
- [x] Formulário de newsletter
- [x] Google Sheets integrado
- [x] Google Apps Script webhook
- [x] GitHub com versionamento
- [x] Vercel com auto-deploy
- [x] Domínio custom (DNS em propagação)
- [x] Responsivo (mobile + desktop)
- [x] Design profissional
- [x] Formulário WhatsApp

---

## 🔍 Métricas & KPIs para Acompanhar

1. **Visualizações por Artigo**: Qual conteúdo atrai mais?
2. **Origem Geográfica**: De quais países vêm os leitores?
3. **Taxa de Newsletter**: Quantos se cadastram?
4. **Artigos Populares**: Quais geram mais cliques?
5. **Tempo no Site**: Quanto tempo os leitores passam?

---

## 🛠️ Troubleshooting

### Formulário de Newsletter não funciona
- Verificar se a URL do webhook está correta
- Verificar se o Google Apps Script está em Deploy
- Verificar permissões da planilha Google Sheets

### Contador de visualizações não atualiza
- Verificar se o localStorage está habilitado
- Verificar console (F12) por erros de JavaScript
- Verificar se ipapi.co está acessível

### Vercel não faz deploy
- Verificar se o push foi bem-sucedido no GitHub
- Verificar Vercel > Deployments > Logs
- Verificar se há erros de build

---

## 📚 Recursos Úteis

- [Vercel Docs](https://vercel.com/docs)
- [Google Apps Script Docs](https://developers.google.com/apps-script)
- [GitHub Guide](https://guides.github.com)
- [MDN Web Docs](https://developer.mozilla.org)

---

**Última revisão**: 24 de maio de 2026  
**Próxima revisão sugerida**: 01 de junho de 2026

---

*Este documento deve ser atualizado sempre que novas funcionalidades forem adicionadas.*
