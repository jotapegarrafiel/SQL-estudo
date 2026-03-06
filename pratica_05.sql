-- 1 Mostre unidade_federativa, populacao_2025 e uma coluna chamada faixa_populacao, com: 'Muito populoso' para população acima de 20 milhões, 'Populoso' para população entre 10 milhões e 20 milhões, e 'Menos populoso' para os demais.
SELECT  unidade_federativa, 
        populacao_2025,
        CASE
            WHEN populacao_2025 > 20000000 THEN 'Muito populoso'
            WHEN populacao_2025 BETWEEN 10000000 AND 20000000 THEN 'Populoso'
            ELSE 'Menos populoso'
        END AS faixa_populacao
FROM estados_brasil
ORDER BY populacao_2025 ASC;

-- 2 Mostre unidade_federativa, variacao_percentual e uma coluna chamada nivel_crescimento, com: 'Alto crescimento' para valores maiores ou iguais a 1.5, 'Crescimento moderado' para valores entre 1 e 1.49, e 'Baixo crescimento' para os demais.
SELECT  unidade_federativa,
        variacao_percentual,
        CASE
            WHEN variacao_percentual >= 1.5 THEN 'Alto crescimento'
            WHEN variacao_percentual BETWEEN 1 AND 1.49 THEN 'Crescimento moderado'
            ELSE 'Baixo crescimento'
        END AS nivel_crescimento
FROM estados_brasil
ORDER BY variacao_percentual DESC;

-- 3 Mostre unidade_federativa, populacao_2024, populacao_2025 e uma coluna chamada situacao_populacional, com: 'Cresceu' se populacao_2025 > populacao_2024, 'Estável' se populacao_2025 = populacao_2024, e 'Reduziu' se populacao_2025 < populacao_2024.
SELECT  unidade_federativa,
        populacao_2024,
        populacao_2025,
        CASE
            WHEN populacao_2025 > populacao_2024 THEN 'Cresceu'
            WHEN populacao_2025 = populacao_2024 THEN 'Estável'
            ELSE 'Reduziu'
        END AS situacao_populacional
FROM estados_brasil;

-- 4 Mostre unidade_federativa, regiao e uma coluna chamada bloco_regional, com: 'Bloco 1' para Sul e Sudeste, 'Bloco 2' para Norte e Nordeste, e 'Bloco 3' para Centro-Oeste.
SELECT  unidade_federativa, 
        regiao,
        CASE
            WHEN regiao IN ('Sul', 'Sudeste') THEN 'Bloco 1'
            WHEN regiao IN ('Norte', 'Nordeste') THEN 'Bloco 2'
            ELSE 'Bloco 3'
        END AS bloco_regional
FROM estados_brasil;

-- 5 Mostre unidade_federativa, variacao_percentual e uma coluna chamada faixa_variacao, com: 'Muito baixa' para valores menores que 0.8, 'Baixa' para valores entre 0.8 e 1.19, 'Média' para valores entre 1.2 e 1.59, e 'Alta' para valores a partir de 1.6.
SELECT  unidade_federativa, 
        variacao_percentual,
        CASE
            WHEN variacao_percentual < 0.8 THEN 'Muito baixa'
            WHEN variacao_percentual >= 0.8 AND variacao_percentual < 1.20 THEN 'Baixa'
            WHEN variacao_percentual >= 1.20 AND variacao_percentual < 1.6 THEN 'Média'
            ELSE 'Alta'
        END AS faixa_variacao
FROM estados_brasil
ORDER BY variacao_percentual DESC;

-- 6 Mostre unidade_federativa, populacao_2025 e uma coluna chamada top_populacao, com: 'Top 10 milhões+' se populacao_2025 >= 10000000, e 'Abaixo de 10 milhões' caso contrário.
SELECT  unidade_federativa, 
        populacao_2025,
        CASE
            WHEN  populacao_2025 >= 10000000 THEN 'Top 10 milhões+'
            ELSE 'Abaixo de 10 milhões'
        END AS top_populacao
FROM estados_brasil;

-- 7 Mostre unidade_federativa, regiao, variacao_percentual e uma coluna chamada analise_regional, com: 'Sul/Sudeste com alta variação' se a região for Sul ou Sudeste e a variação for maior que 1.2, e 'Outros casos' para os demais.
SELECT  unidade_federativa, 
        regiao, 
        variacao_percentual,
        CASE
            WHEN regiao IN ('Sul', 'Sudeste') AND variacao_percentual > 1.2 THEN 'Sul/Sudeste com alta variação'
            ELSE 'Outros casos'
        END AS analise_regional
FROM estados_brasil;

-- 8 Mostre unidade_federativa, regiao e uma coluna chamada sigla_regiao_texto, com: 'S/SE' para Sul e Sudeste, 'N/NE' para Norte e Nordeste, e 'CO' para Centro-Oeste.
SELECT  unidade_federativa,
        regiao,
        CASE
            WHEN regiao IN ('Sul', 'Sudeste') THEN 'S/SE'
            WHEN regiao IN ('Norte', 'Nordeste') THEN 'N/NE'
            ELSE 'CO'
        END AS sigla_regiao_texto
FROM estados_brasil
ORDER BY regiao;

-- Desafio A Mostre unidade_federativa, populacao_2025 e uma coluna categoria_pop, com: 'Gigante' se população for maior ou igual a 30 milhões, 'Grande' se for maior ou igual a 10 milhões, 'Médio' se for maior ou igual a 5 milhões, e 'Pequeno' caso contrário.
SELECT  unidade_federativa,
        populacao_2025,
        CASE
            WHEN populacao_2025 >= 30000000 THEN 'Gigante'
            WHEN populacao_2025 >= 10000000 THEN 'Grande'
            WHEN populacao_2025 >= 5000000 THEN 'Médio'
            ELSE 'Pequeno'
        END AS categoria_pop
FROM estados_brasil
ORDER BY populacao_2025 DESC;

-- Desafio B Mostre unidade_federativa, variacao_percentual e uma coluna status_variacao, com: 'Atenção' se for menor que 0.8, 'OK' se estiver entre 0.8 e 1.4, e 'Destaque' se for maior que 1.4.
SELECT  unidade_federativa,
        variacao_percentual,
        CASE
            WHEN variacao_percentual < 0.8 THEN 'Atenção'
            WHEN variacao_percentual BETWEEN 0.8 AND 1.4 THEN 'Ok'
            ELSE 'Destaque'
        END AS status_variacao
FROM estados_brasil;

-- Desafio C Mostre unidade_federativa, regiao, populacao_2025 e uma coluna perfil, com: 'Potência regional' se for Sudeste e população maior que 15 milhões, 'Estado relevante' se população maior que 8 milhões, e 'Demais estados' nos outros casos.
SELECT  unidade_federativa,
        regiao,
        populacao_2025,
        CASE 
            WHEN regiao = 'Sudeste' AND populacao_2025 > 15000000 THEN 'Potência regional'
            WHEN populacao_2025 > 8000000 THEN 'Estado relevante'
            ELSE 'Demais estados'
        END AS perfil
FROM estados_brasil;