SELECT pu.nome_usuario AS pessoa_usuaria,
IF (MAX(YEAR(h.data_reproducao)) >= 2021, 'Ativa', 'Inativa' ) AS status_pessoa_usuaria
FROM SpotifyClone.pessoas_usuarias AS pu
INNER JOIN SpotifyClone.historico AS h
ON h.pessoa_usuaria_id = pu.pessoa_usuaria_id
GROUP BY pessoa_usuaria, pu.pessoa_usuaria_id
ORDER BY pessoa_usuaria;