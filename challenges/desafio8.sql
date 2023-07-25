SELECT a.nome_artista AS artista, alb.nome_album AS album 
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.albuns AS alb
	ON a.artista_id = alb.artista_id
WHERE nome_artista = 'Elis Regina'
ORDER BY alb.nome_album;