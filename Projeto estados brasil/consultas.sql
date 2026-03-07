-- =========================================
-- PROJETO: ANÁLISE DEMOGRÁFICA DOS ESTADOS
-- =========================================

-- =========================================
-- 1. VISÃO GERAL DOS DADOS
-- =========================================
-- 1.1 Quais são todos os estados, suas regiões, populações de 2024 e 2025, e a variação percentual?
SELECT  unidade_federativa, 
        regiao, 
        populacao_2024, 
        populacao_2025, 
        variacao_percentual
FROM estados_brasil;


-- =========================================
-- 2. CONSULTAS BÁSICAS
-- =========================================
 
-- 2.1 Quais são os 5 estados mais populosos em 2025?
SELECT  unidade_federativa,
        populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 DESC 
LIMIT 5;

-- 2.2 Quais são os 5 estados menos populosos em 2025?
SELECT  unidade_federativa,
        populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 ASC 
LIMIT 5;

-- =========================================
-- 3. AGREGAÇÕES E GROUP BY
-- =========================================
-- 3.1 Quantos estados existem em cada região?
SELECT regiao, COUNT(*) as qtde_estados
FROM estados_brasil
GROUP BY regiao
ORDER BY qtde_estados DESC;

-- 3.2 Qual é a população total de 2025 por região?
SELECT regiao, SUM(populacao_2025) AS qtde_pop_2025
FROM estados_brasil
GROUP BY regiao
ORDER BY qtde_pop_2025 ASC;

-- 3.3 Qual é a média da população de 2025 em cada região?
SELECT regiao, ROUND(AVG(populacao_2025), 2) AS media_pop_2025
FROM estados_brasil
GROUP BY regiao
ORDER BY media_pop_2025 DESC;

-- 3.4 Qual é a menor variação percentual de cada região?
SELECT regiao, MIN(variacao_percentual) AS menor_var
FROM estados_brasil
GROUP BY regiao
ORDER BY menor_var ASC;

-- 3.5 Qual é a maior população de 2025 em cada região?
SELECT regiao, MAX(populacao_2025) AS maior_populacao_2025
FROM estados_brasil
GROUP BY regiao
ORDER BY maior_populacao_2025 ASC;

-- =========================================
-- 4. ANÁLISE DE CRESCIMENTO POPULACIONAL
-- =========================================
-- 4.1 Quais são os 5 estados com maior variação percentual?
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
ORDER BY variacao_percentual DESC
LIMIT 5;

-- 4.2 Quais são os 5 estados com menor variação percentual?
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
ORDER BY variacao_percentual ASC
LIMIT 5;

-- =========================================
-- 5. CLASSIFICAÇÕES COM CASE
-- =========================================
-- 5.1 Como classificar os estados por faixa populacional com base na população de 2025?
SELECT  unidade_federativa, 
        populacao_2025,
        CASE
            WHEN populacao_2025 > 20000000 THEN 'Muito populoso'
            WHEN populacao_2025 BETWEEN 8000000 AND 20000000 THEN 'Populoso'
            ELSE 'Pouco populoso'
        END AS nivel_popularidade
FROM estados_brasil;

-- 5.2 Como classificar os estados por nível de crescimento com base na variação percentual?
SELECT  unidade_federativa,
        variacao_percentual,
        CASE
            WHEN variacao_percentual > 1.5 THEN 'Muito populoso'
            WHEN variacao_percentual BETWEEN 0.8 AND 1.5 THEN 'Populoso'
            ELSE 'Menos populoso'
        END AS nivel_crescimento_pop
FROM estados_brasil
ORDER BY variacao_percentual ASC;

-- 5.3 Como definir um perfil para cada estado com base na região e na população de 2025?
SELECT  unidade_federativa,
        regiao,
        populacao_2025,
        CASE
            WHEN regiao = 'Sudeste' AND populacao_2025 > 15000000 THEN 'Potência regional'
            WHEN populacao_2025 >= 8000000 THEN 'Estado relevante'
            ELSE 'Demais estados'
        END AS perfil
FROM estados_brasil;

-- =========================================
-- 6. CONSULTAS ANALÍTICAS COM SUBQUERY
-- =========================================
-- 6.1 Quais estados estão acima da média populacional de 2025?
SELECT  unidade_federativa,
        populacao_2025
FROM estados_brasil
WHERE populacao_2025 > (
        SELECT AVG(populacao_2025)
        FROM estados_brasil
)
ORDER BY populacao_2025 DESC;

-- 6.2 Qual estado tem a maior população de 2025 em cada região?
SELECT  e.unidade_federativa,
        e.regiao,
        e.populacao_2025
FROM estados_brasil e
WHERE e.populacao_2025 = (
        SELECT MAX(e2.populacao_2025)
        FROM estados_brasil e2
        WHERE e.regiao = e2.regiao
)
ORDER BY e.regiao;

-- 6.3 Qual estado tem a menor variação percentual em cada região?
SELECT  e.unidade_federativa,
        e.regiao,
        e.variacao_percentual
FROM estados_brasil e
WHERE e.variacao_percentual = (
        SELECT MIN(e2.variacao_percentual)
        FROM estados_brasil e2
        WHERE e.regiao = e2.regiao
)
ORDER BY e.variacao_percentual ASC;
