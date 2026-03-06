-- 1 = Conte quantos estados existem na tabela.
SELECT COUNT(unidade_federativa) AS qtde_estados
FROM estados_brasil;

-- 2 = Mostre a soma da população de 2025 de todos os estados.
SELECT SUM(populacao_2025) AS soma_pop_2025
FROM estados_brasil;

-- 3 = Mostre a média da população de 2024.
SELECT ROUND(AVG(populacao_2024), 2) AS media_pop_2024
FROM estados_brasil;

-- 4 = Mostre quantos estados existem em cada região.
SELECT regiao, COUNT(unidade_federativa)
FROM estados_brasil
GROUP BY regiao;

-- 5 = Mostre a soma da população de 2024 por região.
SELECT SUM(populacao_2024) AS soma_pop_2024, regiao
FROM estados_brasil
GROUP BY regiao;

-- 6 = Mostre a média da população de 2025 por região.
SELECT ROUND(AVG(populacao_2025), 2) AS media_pop_2025, regiao
FROM estados_brasil
GROUP BY regiao
ORDER BY media_pop_2025 DESC;

-- 7 = Mostre a menor variação percentual de cada região.
SELECT  e.regiao, e.unidade_federativa, e.variacao_percentual
FROM estados_brasil e
WHERE e.variacao_percentual = (
    SELECT MIN(e2.variacao_percentual)
    FROM estados_brasil e2
    WHERE e2.regiao = e.regiao
)
ORDER BY e.regiao;

-- 8 = Mostre a maior população de 2025 de cada região.
SELECT e.regiao, MAX(populacao_2025) AS pop_max_2025
FROM estados_brasil e
GROUP BY e.regiao;

-- 8.1 = Mostre qual estado de cada região tem a maior população.
SELECT e.unidade_federativa, e.regiao, e.populacao_2025
FROM estados_brasil e
WHERE e.populacao_2025 = (
    SELECT MAX(e2.populacao_2025)
    FROM estados_brasil e2
    WHERE e.regiao = e2.regiao
)
ORDER BY e.regiao;

-- 9 = Mostre a quantidade de estados por região, ordenando da maior quantidade para a menor.
SELECT e.regiao, count(e.unidade_federativa) AS qtde_estados
FROM estados_brasil e
GROUP BY e.regiao
ORDER BY qtde_estados DESC;

-- 10 = Mostre a média da variação percentual por região, ordenando da maior para a menor.
SELECT e.regiao, ROUND(AVG(variacao_percentual), 2) AS media_var_perc
FROM estados_brasil e
GROUP BY e.regiao
ORDER BY media_var_perc DESC;