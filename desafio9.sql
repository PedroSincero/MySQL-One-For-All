DELIMITER $ $ CREATE PROCEDURE albuns_do_artista(IN album VARCHAR(50)) BEGIN
SELECT
  ar.nome AS artista,
  al.nome AS album
FROM
  SpotifyClone.artistas AS ar
  INNER JOIN SpotifyClone.albuns AS al ON al.artistas_id = ar.artistas_id
WHERE
  album = ar.nome
GROUP BY
  ar.nome,
  al.nome;

END $ $ DELIMITER;
