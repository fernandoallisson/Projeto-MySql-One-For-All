SELECT
    C.nome_pessoa_usuaria AS pessoa_usuaria,
    CASE
        WHEN MAX(H.data_reproducao) >= '2021-01-01' THEN 'Ativa'
        ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM SpotifyClone.Clientes C
LEFT JOIN SpotifyClone.Historico H ON C.pessoa_usuaria_id = H.pessoa_usuaria_id
GROUP BY C.nome_pessoa_usuaria
ORDER BY C.nome_pessoa_usuaria;
