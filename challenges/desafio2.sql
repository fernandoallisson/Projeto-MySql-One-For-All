SELECT
    (SELECT COUNT(*) FROM SpotifyClone.Musica) AS cancoes,
    (SELECT COUNT(*) FROM SpotifyClone.Artistas) AS artistas,
    (SELECT COUNT(*) FROM SpotifyClone.Album) AS albuns;