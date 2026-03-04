# 🐘 Exercícios de SQL com PostgreSQL

## 📌 Sobre o projeto

Este repositório reúne meus estudos práticos de **SQL com PostgreSQL**, com foco em consultas usadas no dia a dia de quem trabalha com **Análise de Dados**.

Os exercícios foram feitos em uma base simulada com informações populacionais dos estados brasileiros, permitindo praticar desde consultas básicas até conceitos intermediários, como **subqueries** e **CASE**.

---

## 🎯 Objetivo

Praticar os principais fundamentos de SQL, desenvolvendo mais segurança na escrita e leitura de consultas.

---

## 🛠️ Tecnologias utilizadas

- **PostgreSQL**
- **VS Code**
- Extensão PostgreSQL para VS Code

---

## 🗂️ Estrutura da base

A tabela utilizada nos exercícios foi `estados_brasil`, com colunas como:

- `unidade_federativa`
- `populacao_2024`
- `populacao_2025`
- `variacao_absoluta`
- `variacao_percentual`

---

## 📚 Conteúdos praticados

Durante os exercícios, foram trabalhados os seguintes conceitos:

- `SELECT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- **Subqueries**
- **CASE WHEN**
- Criação de colunas calculadas
- Filtros e ordenação de resultados

---

## ✅ Exercícios realizados

### 1. Consultas básicas
- Listar estados e população de 2025
- Mostrar os estados mais populosos
- Mostrar os estados menos populosos
- Filtrar estados com população acima de 10 milhões
- Filtrar estados com variação percentual acima de 1%

### 2. Funções de agregação
- Calcular a população total de 2025
- Calcular a média da população de 2025
- Identificar o estado com maior variação absoluta

### 3. Consultas intermediárias
- Mostrar estados com população acima da média
- Criar coluna calculada de crescimento populacional
- Classificar estados por nível de crescimento com `CASE`
- Mostrar os 3 estados com maior variação percentual

---

## 💡 Aprendizados

Com esses exercícios, pratiquei:

- construção de consultas mais organizadas
- uso de funções de agregação
- comparação de valores com subqueries
- criação de regras condicionais com `CASE`
- leitura mais clara de consultas SQL

---

## 🚀 Próximos passos

- Praticar `GROUP BY`
- Aprender `JOIN`
- Trabalhar com múltiplas tabelas
- Resolver desafios mais próximos de situações reais de análise de dados
- Criar projetos com bases maiores e mais realistas

---

## 📖 Observação

Os dados utilizados neste repositório são **simulados para fins de estudo**, com o objetivo de praticar comandos SQL e lógica de consulta.

---

## 👨‍💻 Autor

Projeto desenvolvido por **João** como parte dos estudos em **Análise de Dados**.