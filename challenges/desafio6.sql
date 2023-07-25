SELECT
MIN(p.preco) AS faturamento_minimo,
MAX(p.preco) AS faturamento_maximo,
ROUND(AVG(p.preco), 2) AS faturamento_medio,
SUM(p.preco) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.pessoas_usuarias AS pl
ON pl.plano_id = p.plano_id;