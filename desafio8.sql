SELECT ar.nome_artista AS artista,
alb.nome_album AS album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS alb
ON ar.artista_id = 3 AND alb.artista = 3
ORDER BY album;