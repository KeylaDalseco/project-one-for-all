SELECT
pu.nome_usuario AS pessoa_usuaria,
COUNT(h.cancao_id) AS musicas_ouvidas,
ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.pessoas_usuarias AS pu
INNER JOIN SpotifyClone.historico AS h
ON h.pessoa_usuaria_id = pu.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancao_id
GROUP BY pessoa_usuaria	
ORDER BY pessoa_usuaria;