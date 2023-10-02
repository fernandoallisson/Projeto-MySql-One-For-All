SELECT
    A.artista,
    AL.album,
    COUNT(SA.pessoa_usuaria_id) AS pessoas_seguidoras
FROM SpotifyClone.Artistas A
INNER JOIN SpotifyClone.Album AL ON A.Artistas_id = AL.Artistas_id
LEFT JOIN SpotifyClone.Seguindo_Artistas SA ON A.Artistas_id = SA.artistas_id
GROUP BY A.artista, AL.album
ORDER BY pessoas_seguidoras DESC, A.artista ASC, AL.album ASC;