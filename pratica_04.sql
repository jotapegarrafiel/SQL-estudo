-- 1 Mostre os estados da região 'Sul' com população de 2025 maior que 8 milhões.
SELECT e.unidade_federativa, e.regiao, e.populacao_2025
FROM estados_brasil AS e
WHERE e.regiao = 'Sul' AND e.populacao_2025 > 8000000;

-- 2 Mostre os estados da região 'Norte' com variação percentual maior que 1.
SELECT e.unidade_federativa, e.regiao, e.variacao_percentual
FROM estados_brasil AS e
WHERE e.regiao = 'Norte' AND e.variacao_percentual > 1;

-- 3 Mostre os estados da região 'Sul' ou da região 'Sudeste'.
SELECT e.unidade_federativa, e.regiao
FROM estados_brasil AS e
WHERE e.regiao = 'Sul' OR e.regiao = 'Sudeste';

-- 4 Mostre os estados com população de 2025 maior que 15 milhões ou variação percentual maior que 1.5.
SELECT e.unidade_federativa, e.populacao_2025, e.variacao_percentual
FROM estados_brasil AS e
WHERE e.populacao_2025 > 15000000 OR e.variacao_percentual > 1.5
ORDER BY e.variacao_percentual DESC;

-- 5 Mostre os estados da região 'Nordeste' com população de 2024 maior que 5 milhões.
SELECT e.unidade_federativa, e.regiao, e.populacao_2024
FROM estados_brasil AS e
WHERE e.regiao = 'Nordeste' AND e.populacao_2024 > 5000000;

-- 6 Mostre os estados das regiões 'Sul', 'Sudeste' e 'Centro-Oeste'.
SELECT unidade_federativa, regiao
FROM estados_brasil
WHERE regiao IN ('Sul', 'Sudeste', 'Centro-Oeste');

-- 7 Mostre os estados cujo nome seja 'Paraná', 'Bahia' ou 'Amazonas'.
SELECT unidade_federativa
FROM estados_brasil
WHERE unidade_federativa IN ('Paraná', 'Bahia', 'Amazonas');

-- 8 Mostre os estados das regiões 'Norte' e 'Nordeste', ordenando por região e depois por nome do estado.
SELECT unidade_federativa, regiao
FROM estados_brasil
WHERE regiao IN ('Norte', 'Nordeste')
ORDER BY regiao, unidade_federativa;

-- 9 Mostre os estados com nome em uma lista de sua escolha usando IN.
SELECT unidade_federativa
FROM estados_brasil
WHERE unidade_federativa IN ('Roraima', 'Paraná', 'Rio Grande do Sul');

-- 10 Mostre os estados com população de 2025 entre 2 milhões e 8 milhões.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE populacao_2025 BETWEEN 2000000 AND 8000000;

-- 11 Mostre os estados com variação percentual entre 0.5 e 1.5.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
WHERE variacao_percentual BETWEEN 0.5 AND 1.5
ORDER BY variacao_percentual ASC;

-- 12 Mostre os estados com população de 2024 entre 4 milhões e 12 milhões, em ordem decrescente.
SELECT unidade_federativa, populacao_2024
FROM estados_brasil
WHERE populacao_2024 BETWEEN 4000000 AND 12000000
ORDER BY populacao_2024 DESC;

-- 13 Mostre os estados cujo nome começa com 'M'.
SELECT unidade_federativa
FROM estados_brasil
WHERE unidade_federativa LIKE 'M%';

-- 14 Mostre os estados cujo nome termina com 'a'.
SELECT unidade_federativa
FROM estados_brasil
WHERE unidade_federativa LIKE '%a';

-- 15 Mostre os estados cujo nome contém 'ran'.
SELECT unidade_federativa
FROM estados_brasil
WHERE unidade_federativa LIKE '%ran%';

-- Desafio A Mostre os estados das regiões 'Sul' e 'Sudeste' com população de 2025 entre 5 milhões e 20 milhões.
SELECT unidade_federativa, regiao, populacao_2025
FROM estados_brasil
WHERE regiao IN ('Sul', 'Sudeste') AND (populacao_2025 BETWEEN 5000000 AND 20000000);

-- Desafio B Mostre os estados cujo nome começa com 'S' ou termina com 'o'.
SELECT unidade_federativa
FROM estados_brasil
WHERE unidade_federativa LIKE 'S%' OR unidade_federativa LIKE '%o';

-- Desafio C Mostre os estados da região 'Nordeste' cujo nome contém a letra 'a'.
SELECT unidade_federativa
FROM estados_brasil
WHERE regiao = 'Nordeste' AND unidade_federativa LIKE '%a%';