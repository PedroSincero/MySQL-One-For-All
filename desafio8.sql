DELIMITER $ $ CREATE TRIGGER trigger_usuario_delete BEFORE DELETE ON SpotifyClone.usuarios FOR EACH ROW BEGIN
DELETE FROM
  SpotifyClone.seguindo_artistas
WHERE
  OLD.usuarios_id = usuarios_id;

DELETE FROM
  SpotifyClone.historico_reproducao
WHERE
  OLD.usuarios_id = usuarios_id;

END $ $ DELIMITER;
