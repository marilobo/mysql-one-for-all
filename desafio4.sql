SELECT DISTINCT u.nome_usuario AS usuario,
IF(YEAR(max(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.historico_de_reproducao AS h
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario
GROUP BY u.usuario_id
ORDER BY u.nome_usuario;