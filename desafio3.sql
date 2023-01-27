SELECT u.nome_usuario AS usuario,
COUNT(h.usuario) AS qt_de_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON c.cancao_id = h.cancao
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario
GROUP BY u.nome_usuario
ORDER BY u.nome_usuario;