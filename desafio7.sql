CREATE VIEW perfil_artistas AS
SELECT
  a.nome AS artista,
  al.nome AS album,
  COUNT(sa.usuarios_id) AS seguidores
FROM
  SpotifyClone.artistas AS a
  INNER JOIN SpotifyClone.albuns AS al ON al.artistas_id = a.artistas_id
  INNER JOIN SpotifyClone.seguindo_artistas AS sa ON sa.artistas_id = al.artistas_id
GROUP BY
  album,
  artista
ORDER BY
  seguidores DESC;
