SELECT c.nome_cancao AS nome_musica,
CASE
  WHEN c.nome_cancao LIKE '%Bard%' THEN REPLACE(c.nome_cancao, 'Bard', 'QA')
  WHEN c.nome_cancao LIKE '%Amar%' THEN REPLACE(c.nome_cancao, 'Amar', 'Code Review')
  WHEN c.nome_cancao LIKE '%Pais%' THEN REPLACE(c.nome_cancao, 'Pais', 'Pull Requests')
  WHEN c.nome_cancao LIKE '%SOUL%' THEN REPLACE(c.nome_cancao, 'SOUL', 'CODE')
  WHEN c.nome_cancao LIKE '%SUPERSTAR%' THEN REPLACE(c.nome_cancao, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.cancoes AS c
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;