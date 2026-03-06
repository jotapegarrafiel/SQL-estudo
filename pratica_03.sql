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
