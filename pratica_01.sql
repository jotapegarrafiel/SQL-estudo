-- 1. Liste o nome de todos os estados e a população de 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil;

-- 2. Mostre os 5 estados mais populosos em 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 DESC
LIMIT 5;

-- 3. Mostre os 5 estados menos populosos em 2025.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
ORDER BY populacao_2025 ASC
LIMIT 5;

-- 4. Liste os estados com população em 2025 acima de 10 milhões.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE populacao_2025 > 10000000
ORDER BY populacao_2025 DESC;

-- 5. Liste os estados com variação percentual acima de 1%.
SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
WHERE variacao_percentual > 1
ORDER BY variacao_percentual DESC;

-- 6. Calcule a população total de 2025.
SELECT SUM(populacao_2025) as soma_populacao_2025
FROM estados_brasil;

-- 7. Calcule a média da população de 2025.
SELECT ROUND(AVG(populacao_2025), 2) as media_populacao_2025
FROM estados_brasil;

-- 8. Descubra qual estado tem a maior variação absoluta.

SELECT unidade_federativa, variacao_absoluta
FROM estados_brasil
ORDER BY variacao_absoluta DESC
LIMIT 1;

-- 9. Mostre os estados cuja população de 2025 está acima da média.
SELECT unidade_federativa, populacao_2025
FROM estados_brasil
WHERE populacao_2025 > (
    SELECT AVG(populacao_2025)
    FROM estados_brasil
)
ORDER BY populacao_2025 DESC;

-- 10. Crie uma consulta que mostre:
-- nome do estado
-- população de 2024
-- população de 2025
-- crescimento calculado pela diferença entre 2025 e 2024

SELECT  unidade_federativa,
        populacao_2024,
        populacao_2025, 
        populacao_2025 - populacao_2024 as diferenca
FROM estados_brasil;

-- 11. Crie uma classificação para o crescimento percentual:
-- acima ou igual a 1.5 = “alto crescimento”
-- entre 1.0 e 1.49 = “crescimento moderado”
-- abaixo de 1.0 = “baixo crescimento”

SELECT  unidade_federativa,
        variacao_percentual,
        CASE
            WHEN variacao_percentual >= 1.5 THEN 'Alto Crescimento'
            WHEN variacao_percentual >= 1 THEN 'Crescimento moderado'
            ELSE 'Baixo crescimento'
        END as nivel_crescimento
FROM estados_brasil
ORDER BY variacao_percentual DESC;

-- 12. Mostre os 3 estados com maior variação percentual.

SELECT unidade_federativa, variacao_percentual
FROM estados_brasil
ORDER BY variacao_percentual DESC
LIMIT 3;