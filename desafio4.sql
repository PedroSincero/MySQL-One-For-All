CREATE VIEW top_3_artistas AS
SELECT
  a.nome AS artista,
  COUNT(sa.artistas_id) AS seguidores
FROM
  SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.seguindo_artistas AS sa ON sa.artistas_id = a.artistas_id
GROUP BY
  sa.artistas_id,
  a.artistas_id
ORDER BY
  seguidores DESC,
  artista
LIMIT
  3;
