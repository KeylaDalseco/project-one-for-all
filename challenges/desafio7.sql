SELECT
	a.nome_artista AS artista,
	alb.nome_album AS album,
    COUNT(sa.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.albuns AS alb
	ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS sa
	ON a.artista_id = sa.artista_id
GROUP BY sa.artista_id, alb.nome_album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;