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
- Mostrar todas as colunas da tabela
- Mostrar apenas o nome dos estados
- Mostrar nome dos estados e população de 2025
- Filtrar estados por região
- Filtrar estados com população de 2025 acima de 10 milhões
- Filtrar estados com variação percentual acima de 1

### 2. Ordenação e limitação de resultados
- Listar estados em ordem alfabética
- Ordenar estados pela população de 2024 e 2025
- Ordenar estados pela variação percentual
- Mostrar os estados mais populosos com `LIMIT`
- Mostrar os estados menos populosos com `LIMIT`

### 3. Filtros combinados
- Filtrar estados por região e ordenar alfabeticamente
- Mostrar estados de uma região específica com maior população
- Filtrar estados com população abaixo de 5 milhões
- Filtrar estados com variação percentual acima de 1.5
- Mostrar estados com população entre 3 e 10 milhões com `BETWEEN`
- Filtrar estados que não pertencem a uma determinada região

### 4. Funções de agregação
- Contar quantos estados existem na tabela com `COUNT()`
- Somar a população total de 2024 e 2025 com `SUM()`
- Calcular a média da população com `AVG()`
- Arredondar médias com `ROUND()`

### 5. Agrupamento de dados
- Contar quantos estados existem em cada região com `GROUP BY`
- Somar a população de 2024 por região
- Calcular a média da população de 2025 por região
- Ordenar resultados agregados
- Identificar a menor variação percentual por região com `MIN()`

### 6. Conceitos praticados
- Uso de `SELECT`, `FROM`, `WHERE`, `ORDER BY` e `LIMIT`
- Uso de `COUNT()`, `SUM()`, `AVG()` e `MIN()`
- Uso de `GROUP BY`
- Criação e uso da coluna `regiao`
- Leitura e interpretação de enunciados
- Boas práticas de escrita SQL com consultas explícitas e organizadas

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