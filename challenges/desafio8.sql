SELECT
    'Elis Regina' AS artista,
    album AS album
FROM SpotifyClone.Album
WHERE Artistas_id = (
    SELECT Artistas_id
    FROM SpotifyClone.Artistas
    WHERE artista = 'Elis Regina'
)
ORDER BY album ASC;