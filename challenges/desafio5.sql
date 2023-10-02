SELECT
    M.cancoes AS cancao,
    COUNT(*) AS reproducoes
FROM SpotifyClone.Musica M
INNER JOIN SpotifyClone.Historico H ON M.Musicas_id = H.Musicas_id
GROUP BY M.cancoes
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
