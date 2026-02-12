# 📊 Customer Behavior Data Analysis - End-to-End Project

![Dashboard Preview](https://github.com/Kelly20003/Customer-Behavior-Dashboard/blob/main/dados.png)

## 📌 Visão Geral
Este projeto apresenta uma análise profunda do comportamento de compra de clientes no setor de varejo. Utilizando um pipeline de dados completo, o objetivo foi transformar dados brutos em insights estratégicos para otimização de marketing e fidelização de clientes.

## 🔄 Ciclo do Projeto (Workflow)
O projeto seguiu o ciclo de vida completo de análise de dados, conforme as melhores práticas de mercado:

1.  **Definição do Problema:** Entender os drivers de receita e comportamento demográfico.
2.  **Tratamento de Dados (Python/Pandas):** Limpeza, imputação de nulos e Feature Engineering.
3.  **Análise de Dados (SQL):** Consultas complexas para responder perguntas de negócio e segmentação.
4.  **Visualização (Power BI):** Criação de um dashboard interativo e profissional.
5.  **Insights:** Documentação de recomendações baseadas nos dados encontrados.

---

## 🛠️ Tecnologias Utilizadas
* **Python:** Limpeza e processamento (Pandas, NumPy).
* **SQL (PostgreSQL):** Análise avançada e manipulação de banco de dados.
* **Power BI:** Visualização de dados e DAX.
* **Excel/CSV:** Fonte de dados bruta.

---

## 🐍 1. Processamento de Dados com Python
Nesta etapa, foquei na integridade dos dados para garantir que a análise posterior fosse confiável:
* **Tratamento de Nulos:** As avaliações (*Review Rating*) foram preenchidas usando a mediana por categoria, mantendo a precisão estatística.
* **Feature Engineering:** * Criação da coluna de **Age Group** (Jovem Adulto, Adulto, Meia-idade e Sênior).
 * Conversão de frequências de texto para dias numéricos para cálculos matemáticos.
* **Padronização:** Aplicação de *snake_case* em todas as colunas para compatibilidade técnica.

---

## 🗄️ 2. Análise Estratégica com SQL
Com os dados estruturados no banco de dados, realizei consultas para identificar:
* **Segmentação de Lealdade:** Identificação de clientes "Leais" vs "Novos" com base no histórico de compras anteriores.
* **Tendências de Receita:** Comparação de faturamento entre gêneros e faixas etárias.
* **Eficiência de Envio:** Análise de ticket médio por modalidade de frete (Express vs Standard).

---

## 📈 3. Visualização de Dados (Power BI)
O dashboard foi desenvolvido para ser intuitivo e focado em KPIs reais:
* **KPIs de Topo:** Total de Clientes, Ticket Médio e Avaliação Média.
* **Comportamento de Compra:** Visão detalhada de vendas por categoria (Clothing, Accessories, etc.).
* **Status de Assinatura:** Monitoramento da taxa de conversão do programa de fidelidade.

---

## 💡 Principais Insights de Negócio
1.  **Público-Alvo:** O grupo de **Young Adults** é o maior gerador de receita e volume de vendas.
2.  **Fidelização:** 73% da base de clientes ainda não possui assinatura, indicando uma oportunidade massiva de conversão.
3.  **Core Business:** A categoria de **Clothing (Vestuário)** é o motor principal do
