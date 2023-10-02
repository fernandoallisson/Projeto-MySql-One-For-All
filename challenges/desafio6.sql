SELECT
    ROUND(MIN(P.valor), 2) AS faturamento_minimo,
    ROUND(MAX(P.valor), 2) AS faturamento_maximo,
    ROUND(AVG(P.valor), 2) AS faturamento_medio,
    ROUND(SUM(P.valor), 2) AS faturamento_total
FROM SpotifyClone.Clientes C
INNER JOIN SpotifyClone.Planos P ON C.planos_id = P.planos_id;