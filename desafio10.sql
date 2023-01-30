SELECT c.nome_cancao AS nome,
COUNT(h.usuario) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON h.cancao = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario = u.usuario_id
WHERE u.plano = 1 OR u.plano = 4
GROUP BY nome
ORDER BY nome;