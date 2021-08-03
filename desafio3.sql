CREATE VIEW historico_reproducao_usuarios AS
SELECT
  u.nome AS 'usuario',
  m.nome AS 'nome'
FROM
  historico_reproducao AS h
  INNER JOIN SpotifyClone.usuarios AS u ON h.usuarios_id = u.usuarios_id
  INNER JOIN SpotifyClone.musicas AS m ON m.musicas_id = h.musicas_id
ORDER BY
  u.nome,
  m.nome;
