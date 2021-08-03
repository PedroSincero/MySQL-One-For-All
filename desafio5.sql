CREATE VIEW top_2_hits_do_momento AS
SELECT
  m.nome AS cancao,
  COUNT(hr.musicas_id) AS reproducoes
FROM
  SpotifyClone.musicas AS m
  INNER JOIN SpotifyClone.historico_reproducao AS hr ON hr.musicas_id = m.musicas_id
GROUP BY
  hr.musicas_id
ORDER BY
  reproducoes DESC,
  cancao
LIMIT
  2;
