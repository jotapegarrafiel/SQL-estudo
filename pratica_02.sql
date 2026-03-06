SELECT *
FROM estados_brasil AS e;

-- Exercício 1 = Mostre todas as colunas da tabela.
SELECT *
FROM estados_brasil;

-- Exercício 2 = Mostre apenas o nome dos estados.
SELECT unidade_federativa
FROM estados_brasil;

-- Exercício 3 = Mostre o nome dos estados e a população de 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil;

-- Exercício 4 = Mostre os estados que pertencem à região Sul
SELECT unidade_federativa, regiao
FROM estados_brasil
WHERE regiao = 'Sul';

-- Exercício 5 = Mostre os estados cuja população de 2025 é maior que 10 milhões.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE populacao_2025 > 10000000;

-- Exercício 6 = Mostre os estados cuja variação percentual é maior que 1.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
WHERE variacao_percentual > 1;

-- Exercício 7 = Liste os estados em ordem alfabética pelo nome.
SELECT unidade_federativa
FROM estados_brasil
ORDER BY unidade_federativa ASC;

-- Exercício 8 = Liste os estados do maior para o menor valor de população em 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 DESC;

-- Exercício 9 = Liste os estados do menor para o maior valor de variação percentual.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
ORDER BY variacao_percentual ASC;

-- Exercício 10 = Mostre nome do estado e população de 2024, ordenando da maior para a menor população de 2024.
SELECT unidade_federativa, populacao_2024
FROM estados_brasil
ORDER BY populacao_2024 DESC;

-- Exercício 11 = Mostre os 5 estados com maior população em 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 DESC
LIMIT 5;

-- Exercício 12 = Mostre os 5 estados com menor população em 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 ASC
LIMIT 5;

-- Exercício 13 = Mostre os 3 estados com maior variação percentual.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
ORDER BY variacao_percentual DESC
LIMIT 3;

-- Exercício 14 = Mostre os 10 primeiros estados em ordem alfabética.
SELECT unidade_federativa
FROM estados_brasil
ORDER BY unidade_federativa ASC
LIMIT 10;

-- Exercício 15 = Mostre os estados da região Nordeste, em ordem alfabética.
SELECT unidade_federativa , regiao
FROM estados_brasil
WHERE regiao = 'Nordeste'
ORDER BY unidade_federativa ASC;

-- Exercício 16 = Mostre os 5 estados da região Sudeste com maior população em 2025.
SELECT unidade_federativa, populacao_2025, regiao
FROM estados_brasil
WHERE regiao = 'Sudeste'
ORDER BY populacao_2025 DESC
LIMIT 5;

-- Exercício 17 = Mostre os estados cuja população de 2025 é menor que 5 milhões, ordenados da menor para a maior.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE populacao_2025 < 5000000
ORDER BY populacao_2025 ASC;

-- Exercício 18 = Mostre os estados cuja variação percentual é maior que 1.5, do maior para o menor valor.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
WHERE variacao_percentual > 1.5
ORDER BY variacao_percentual DESC;

-- Exercício 19 = Mostre os 7 estados com menor variação percentual.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
ORDER BY variacao_percentual ASC
LIMIT 7;

-- Exercício 20 = Mostre nome do estado, região e população de 2025 dos estados da região Norte, ordenando da maior para a menor população.
SELECT unidade_federativa, regiao, populacao_2025
FROM estados_brasil
WHERE regiao = 'Norte'
ORDER BY populacao_2025 DESC;

-- Exercício 21 = Mostre os estados que não pertencem à região Sul.
SELECT unidade_federativa, regiao
FROM estados_brasil
WHERE regiao != 'Sul';

-- Exercício 22 = Mostre os estados cuja população de 2025 está entre 3 milhões e 10 milhões, ordenando do maior para o menor.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE populacao_2025 BETWEEN 3000000 AND 10000000
ORDER BY populacao_2025 DESC;

-- Exercício 23 = Mostre os 5 estados com maior população de 2024.
SELECT unidade_federativa, populacao_2024
FROM estados_brasil
ORDER BY populacao_2024 DESC
LIMIT 5;

-- Exercício 24 = Mostre os estados com variação percentual menor que 1, em ordem alfabética.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
WHERE variacao_percentual < 1
ORDER BY unidade_federativa ASC;

-- Exercício 25 = Mostre nome do estado, população de 2024 e população de 2025 dos 8 estados com maior população em 2025.
SELECT unidade_federativa, populacao_2024, populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 DESC
LIMIT 8;

-- Desafio A = Mostre os 4 estados da região Centro-Oeste com maior população em 2025. 
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE regiao = 'Centro-Oeste'
ORDER BY populacao_2025 DESC 
LIMIT 4;

-- Desafio B = Mostre os estados com população de 2024 maior que 8 milhões, em ordem alfabética.
SELECT unidade_federativa, populacao_2024
FROM estados_brasil
WHERE populacao_2024 > 8000000
ORDER BY unidade_federativa ASC;

-- Desafio C = Mostre os 6 estados com menor população de 2024.
SELECT unidade_federativa, populacao_2024
FROM estados_brasil
ORDER BY populacao_2024 ASC
LIMIT 6;

-- Desafio D = Mostre os estados da região Sul com variação percentual maior que 1, ordenando da maior para a menor variação.
SELECT unidade_federativa, regiao , variacao_percentual
FROM estados_brasil
WHERE variacao_percentual > 1 AND regiao = 'Sul'
ORDER BY variacao_percentual DESC;