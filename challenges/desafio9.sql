SELECT
    COUNT(*) AS musicas_no_historico
FROM SpotifyClone.Historico
WHERE pessoa_usuaria_id = (
    SELECT pessoa_usuaria_id
    FROM SpotifyClone.Clientes
    WHERE nome_pessoa_usuaria = 'Barbara Liskov'
);
