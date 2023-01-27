DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_artista VARCHAR(120) NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_plano VARCHAR(60) NOT NULL,
      valor_plano DECIMAL(5,2) UNSIGNED NOT NULL,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuarios(
      usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_usuario VARCHAR(120) NOT NULL,
      idade INT NOT NULL,
      plano INT NOT NULL,
      data_da_assinatura DATE NOT NULL,
      FOREIGN KEY (plano) REFERENCES planos (plano_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_album VARCHAR(150) NOT NULL,
      artista INT NOT NULL,
      ano_lancamento YEAR NOT NULL,
      FOREIGN KEY (artista) REFERENCES artistas (artista_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
      cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_cancao VARCHAR(150) NOT NULL,
      album INT NOT NULL,
      duracao_segundos INT,
      FOREIGN KEY (album) REFERENCES albuns (album_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario_artista(
      artista INT NOT NULL,
      usuario INT NOT NULL,
      CONSTRAINT PRIMARY KEY(artista, usuario),
      FOREIGN KEY (artista) REFERENCES artistas (artista_id),
      FOREIGN KEY (usuario) REFERENCES usuarios (usuario_id)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico_de_reproducao(
      usuario INT NOT NULL,
      cancao INT NOT NULL,
      data_reproducao DATE NOT NULL,
      CONSTRAINT PRIMARY KEY(usuario, cancao),
      FOREIGN KEY (cancao) REFERENCES cancoes (cancao_id),
      FOREIGN KEY (usuario) REFERENCES usuarios (usuario_id)
  ) engine = InnoDB;

  INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados A'),
    ('exemplo de dados 2', 'exemplo de dados B'),
    ('exemplo de dados 3', 'exemplo de dados C');

  INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
  VALUES
    ('exemplo de dados 1', 'exemplo de dados X'),
    ('exemplo de dados 2', 'exemplo de dados Y');