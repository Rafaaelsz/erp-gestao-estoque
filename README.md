# 📦 Sistema de Gestão de Estoque (Django)

![Python](https://img.shields.io/badge/Python-3.10%2B-blue)
![Django](https://img.shields.io/badge/Django-5.0-green)
![TailwindCSS](https://img.shields.io/badge/Tailwind-CSS-38bdf8)
![Status](https://img.shields.io/badge/Status-Em_Desenvolvimento-yellow)

Um sistema web completo para controle de estoque de pequenas empresas, focado em simplicidade, agilidade e inteligência de dados. Desenvolvido com **Django** e estilizado com **Tailwind CSS**.

## 📸 Screenshots

![Dashboard Preview](https://via.placeholder.com/800x400?text=Dashboard+do+Sistema)
*(Substitua este link por uma imagem real da sua Dashboard)*

## 🚀 Funcionalidades

### 📊 Dashboard Inteligente
- **KPIs em Tempo Real:** Visualização imediata do Total de Produtos, Quantidade de Itens e Valor Monetário em Estoque.
- **Gráficos:** Distribuição de estoque por categoria (Chart.js).
- **Alertas Visuais:** Itens com estoque baixo ou zerado são destacados automaticamente (Amarelo/Vermelho).

### 📦 Gestão de Produtos (CRUD)
- Cadastro completo de produtos com categorização.
- Cálculo automático de **Margem de Lucro (%)** e Lucro Líquido (R$).
- Edição e Exclusão segura de itens.

### 🔄 Controle de Movimentação (Entradas e Saídas)
- Registro de Entradas (Compras/Devoluções) e Saídas (Vendas/Perdas).
- **Validação de Estoque:** O sistema impede vendas se não houver saldo suficiente.
- Atualização automática do saldo do produto.

### 🛡️ Auditoria e Segurança
- **Login Obrigatório:** Acesso restrito a usuários autenticados.
- **Histórico Completo:** Rastreabilidade total. Saiba *quem* movimentou, *quanto* e *quando*.

## 🛠️ Tecnologias Utilizadas

* **Backend:** Python, Django Framework
* **Banco de Dados:** SQLite (Padrão) / Expansível para PostgreSQL
* **Frontend:** HTML5, Tailwind CSS (via CDN), Chart.js
* **Ícones:** Heroicons (SVG)

## ⚙️ Como Rodar o Projeto Localmente

Pré-requisitos: Python instalado.

### 1. Clone o repositório
```bash
git clone [https://github.com/seu-usuario/gestao-estoque.git](https://github.com/seu-usuario/gestao-estoque.git)
cd gestao-estoque
