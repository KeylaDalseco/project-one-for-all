SELECT
COUNT(c.nome_cancao) AS cancoes,
COUNT(DISTINCT a.artista_id) AS artistas,
COUNT(DISTINCT a.nome_album) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.albuns AS a
ON a.album_id = c.album_id;