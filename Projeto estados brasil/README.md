# 📊 Análise Demográfica dos Estados Brasileiros com SQL

## 📌 Visão geral

Este projeto foi desenvolvido com o objetivo de praticar consultas SQL por meio de uma análise demográfica dos estados brasileiros. A proposta foi explorar dados de população por estado e região, aplicando desde consultas básicas até agregações, classificações com `CASE` e subqueries.

---

## 🎯 Objetivo do projeto

O principal objetivo deste projeto é fortalecer a prática em SQL, desenvolvendo consultas capazes de responder perguntas analíticas sobre os dados populacionais dos estados brasileiros.

Entre os objetivos específicos, estão:

- praticar consultas básicas com `SELECT`, `WHERE`, `ORDER BY` e `LIMIT`
- aplicar funções de agregação como `COUNT`, `SUM`, `AVG`, `MIN` e `MAX`
- utilizar `GROUP BY` para análises por região
- criar classificações com `CASE WHEN`
- utilizar subqueries para responder perguntas analíticas mais avançadas

---

## 🗂️ Base de dados

A análise foi realizada sobre uma tabela chamada `estados_brasil`, contendo as seguintes colunas:

- `unidade_federativa` → nome do estado
- `regiao` → região do estado
- `populacao_2024` → população estimada em 2024
- `populacao_2025` → população estimada em 2025
- `variacao_percentual` → variação percentual entre os períodos analisados

---

## 🛠️ Técnicas SQL utilizadas

Durante o projeto, foram praticados os seguintes conceitos:

- `SELECT`
- `FROM`
- `WHERE`
- `ORDER BY`
- `LIMIT`
- `GROUP BY`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `CASE WHEN`
- subqueries
- operadores como `AND`, `OR`, `IN`, `BETWEEN` e `LIKE`

---

## ❓ Perguntas respondidas

Algumas das perguntas respondidas ao longo do projeto foram:

- Quais são os estados mais populosos em 2025?
- Quais são os estados menos populosos em 2025?
- Quantos estados existem em cada região?
- Qual é a população total de 2025 por região?
- Qual é a média populacional por região?
- Quais estados apresentaram maior e menor variação percentual?
- Como classificar os estados por faixa populacional?
- Como classificar os estados por nível de crescimento?
- Quais estados estão acima da média populacional?
- Qual estado possui a maior população em cada região?
- Qual estado possui a menor variação percentual em cada região?

---

## 📁 Estrutura do projeto

```text
projeto-sql-estados-brasil/
├── README.md
└── consultas.sql
```

---

## ▶️ Como executar

1. Abra seu ambiente SQL de preferência (SQLite, PostgreSQL, MySQL, etc).
2. Certifique-se de que a tabela `estados_brasil` esteja criada e preenchida.
3. Execute as consultas do arquivo `consultas.sql`.
4. Analise os resultados retornados em cada bloco do projeto.

---

## 📈 Principais análises realizadas

O projeto foi dividido em blocos para facilitar a organização das consultas:

### 1. Visão geral dos dados
Consulta inicial para visualizar estados, regiões, populações e variação percentual.

### 2. Consultas básicas
Consultas para identificar os estados mais e menos populosos em 2025.

### 3. Agregações e `GROUP BY`
Análises por região usando contagem de estados, soma da população, média populacional e identificação de valores máximos e mínimos.

### 4. Análise de crescimento populacional
Consultas voltadas à identificação dos estados com maior e menor variação percentual.

### 5. Classificações com `CASE`
Criação de categorias para faixa populacional, nível de crescimento e perfil dos estados.

### 6. Consultas analíticas com subqueries
Análises mais avançadas, como identificar estados acima da média populacional e encontrar estados com maior ou menor indicador dentro de cada região.

---

## 💡 Possíveis insights

Com este projeto, é possível identificar padrões demográficos importantes, como:

- regiões com maior concentração populacional
- estados com maior destaque em crescimento populacional
- diferenças de porte populacional entre os estados
- comparação entre estados acima e abaixo da média nacional

---

## 👨‍💻 Autor

Projeto desenvolvido por **João** como parte dos estudos em **SQL** e construção de portfólio na área de **Dados / Análise de Dados**.