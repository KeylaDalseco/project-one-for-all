SELECT c.nome_cancao AS cancao, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON h.cancao_id = c.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, c.nome_cancao ASC
LIMIT 2;