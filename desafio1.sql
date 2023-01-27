DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.usuarios(
      user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      usuario tipo restricoes,
      idade tipo restricoes,
      plano tipo restricoes,
      data_da_assinatura tipo restricoes,

  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.planos(
      plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plano tipo restricoes,
      valor_plano tipo restricoes,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.historico_de_reproducao(
      usuario tipo restricoes,
      cancao tipo restricoes,
      data_reproducao tipo restricoes,
      CONSTRAINT PRIMARY KEY(usuario, cancao)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.usuario_artista(
      artista tipo restricoes,
      usuario tipo restricoes,
      CONSTRAINT PRIMARY KEY(artista, usuario)
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.artistas(
      artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      artista tipo restricoes,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.albuns(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      album tipo restricoes,
      artista tipo restricoes,
      ano_lancamento tipo restricoes,
  ) engine = InnoDB;

  CREATE TABLE SpotifyClone.cancoes(
      cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome tipo restricoes,
      album tipo restricoes,
      duracao_segundos tipo restricoes,
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