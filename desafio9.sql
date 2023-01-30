SELECT COUNT(h.cancao) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducao AS h
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario
WHERE u.nome_usuario = 'Barbara Liskov';