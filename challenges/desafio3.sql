USE SpotifyClone;

SELECT
    C.nome_pessoa_usuaria AS pessoa_usuaria,
    COUNT(H.Musicas_id) AS musicas_ouvidas,
    SUM(M.duracao_segundo / 60) AS total_minutos
FROM SpotifyClone.Clientes C
LEFT JOIN SpotifyClone.Historico H ON C.pessoa_usuaria_id = H.pessoa_usuaria_id
LEFT JOIN SpotifyClone.Musica M ON H.Musicas_id = M.Musicas_id
GROUP BY C.nome_pessoa_usuaria
ORDER BY C.nome_pessoa_usuaria;