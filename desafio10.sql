DELIMITER $ $ CREATE FUNCTION quantidade_musicas_no_historico (param_historico VARCHAR(50)) RETURNS INT READS SQL DATA BEGIN DECLARE result INT;
SELECT
  usuarios_id
FROM
  SpotifyClone.historico_reproducao
WHERE
  usuarios_id = param_historico INTO result;
RETURN result;
END $ $ DELIMITER;
