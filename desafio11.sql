CREATE VIEW cancoes_premium AS
SELECT
  m.nome AS 'nome',
  COUNT(m.musicas_id) AS 'reproducoes'
FROM
  SpotifyClone.musicas AS m
  INNER JOIN SpotifyClone.historico_reproducao AS hr ON hr.musicas_id = m.musicas_id
  INNER JOIN SpotifyClone.usuarios AS u ON u.usuarios_id = hr.usuarios_id
WHERE
  u.usuarios_id <> 1
GROUP BY
  m.nome
ORDER BY
  m.nome;
