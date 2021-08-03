DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artistas(
    artistas_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL
) engine = InnoDB;

CREATE TABLE plano(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(15) NOT NULL,
    valor DECIMAL(4, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
    usuarios_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) engine = InnoDB;

CREATE TABLE albuns(
    albuns_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(35) NOT NULL,
    artistas_id INT NOT NULL,
    FOREIGN KEY (artistas_id) REFERENCES artistas (artistas_id)
) engine = InnoDB;

CREATE TABLE musicas(
    musicas_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    albuns_id INT NOT NULL,
    FOREIGN KEY (albuns_id) REFERENCES albuns (albuns_id)
) engine = InnoDB;

CREATE TABLE historico_reproducao(
    usuarios_id INT NOT NULL,
    musicas_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuarios_id, musicas_id),
    FOREIGN KEY (usuarios_id) REFERENCES usuarios (usuarios_id),
    FOREIGN KEY (musicas_id) REFERENCES musicas (musicas_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    usuarios_id INT NOT NULL,
    artistas_id INT NOT NULL,
	CONSTRAINT PRIMARY KEY(usuarios_id, artistas_id),
    FOREIGN KEY (usuarios_id) REFERENCES usuarios (usuarios_id),
    FOREIGN KEY (artistas_id) REFERENCES artistas (artistas_id)
) engine = InnoDB;

INSERT INTO artistas (nome)
VALUES
  ("Walter Phoenix"),
  ("Peter Strong"),
  ("Lance Day"),
  ("Freedie Shannon");

INSERT INTO plano (plano, valor)
VALUES
  ("gratuito", 0),
  ("familiar", 7.99),
  ("universitário", 5.99);

INSERT INTO usuarios (nome, idade, plano_id)
VALUES
  ("Thati", 23, 1),
  ("Cintia", 35, 2),
  ("Bill", 20, 3),
  ("Roger", 45, 1);
  
INSERT INTO albuns (nome, artistas_id)
VALUES
  ("Envious", 1),
  ("Exuberant", 1),
  ("Hallowed Steam", 2),
  ("Incandescent", 3),
  ("Temporary Culture", 4);
  
INSERT INTO musicas (nome, albuns_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);
  
  INSERT INTO historico_reproducao (usuarios_id, musicas_id)
  VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);
  
  INSERT INTO seguindo_artistas (usuarios_id, artistas_id)
  VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  