SELECT c.nome_cancao AS cancao,
COUNT(h.cancao) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON h.cancao = c.cancao_id
GROUP BY c.nome_cancao
ORDER BY reproducoes DESC, c.nome_cancao ASC
LIMIT 2;