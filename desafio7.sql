SELECT a.nome_artista AS artista,
alb.nome_album AS album,
COUNT(ua.artista) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista = a.artista_id
INNER JOIN SpotifyClone.usuario_artista AS ua
ON ua.artista = a.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;