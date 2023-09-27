DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Planos (
    planos_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Clientes (
    pessoa_usuaria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria VARCHAR(255) NOT NULL,
    idade INT,
    planos_id INT,
    data_assinatura DATE,
    FOREIGN KEY (planos_id) REFERENCES SpotifyClone.Planos(planos_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artistas (
    Artistas_id INT AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(255) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Seguindo_Artistas (
    pessoa_usuaria_id INT,
    artistas INT,
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.Clientes(pessoa_usuaria_id),
    FOREIGN KEY (artistas) REFERENCES SpotifyClone.Artistas(Artistas_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Album (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(255) NOT NULL,
    Artistas_id INT,
    ano_lancamento INT,
    FOREIGN KEY (Artistas_id) REFERENCES SpotifyClone.Artistas(Artistas_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Musica (
    Musicas_id INT AUTO_INCREMENT PRIMARY KEY,
    cancoes VARCHAR(255) NOT NULL,
    duracao_segundo INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.Album(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Historico (
    pessoa_usuaria_id INT,
    Musicas_id INT,
    data_reproducao DATE,
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.Clientes(pessoa_usuaria_id),
    FOREIGN KEY (Musicas_id) REFERENCES SpotifyClone.Musica(Musicas_id)
) engine = InnoDB;

-- Inserção de dados na tabela Planos
INSERT INTO SpotifyClone.Planos (plano, valor) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99),
('pessoal', 6.99);

-- Inserção de dados na tabela Clientes
INSERT INTO SpotifyClone.Clientes (nome_pessoa_usuaria, idade, planos_id, data_assinatura) VALUES
('Barbara Liskov', 82, 1, '2019-10-20'),
('Robert Cecil Martin', 58, 1, '2017-01-06'),
('Ada Lovelace', 37, 2, '2017-12-30'),
('Martin Fowler', 46, 2, '2017-01-17'),
('Sandi Metz', 58, 2, '2018-04-29'),
('Paulo Freire', 19, 3, '2018-02-14'),
('Bell Hooks', 26, 3, '2018-01-05'),
('Christopher Alexander', 85, 4, '2019-06-05'),
('Judith Butler', 45, 4, '2020-05-13'),
('Jorge Amado', 58, 4, '2017-02-17');

-- Inserção de dados na tabela Artistas
INSERT INTO SpotifyClone.Artistas (artista) VALUES
('Beyoncé'),
('Queen'),
('Elis Regina'),
('Blind Guardian'),
('Nina Simone'),
('Baco Exu do Blues');

-- Inserção de dados na tabela Seguindo_Artistas
INSERT INTO SpotifyClone.Seguindo_Artistas (pessoa_usuaria_id, artistas_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 6),
(5, 4),
(5, 5),
(6, 5),
(6, 1),
(7, 5),
(8, 7),
(9, 3),
(10, 2);


-- Inserção de dados na tabela Album
INSERT INTO SpotifyClone.Album (album, Artistas_id, ano_lancamento) VALUES
('Renaissance', 1, 2022),
('Jazz', 2, 1978),
('Hot Space', 2, 1982),
('Falso Brilhante', 3, 1998),
('Vento de Maio', 3, 2001),
('QVVJFA?', 6, 2003),
('Somewhere Far Beyond', 5, 2007),
('I Put A Spell On You', 4, 2012);

-- Inserção de dados na tabela Musica
INSERT INTO SpotifyClone.Musica (cancoes, duracao_segundo, album_id) VALUES
('"BREAK MY SOUL"; "VIRGO\'S GROOVE"; "ALIEN SUPERSTAR"', 279, 1),
('"Don\'t Stop Me Now"', 203, 2),
('"Under Pressure"', 152, 3),
('"Como Nossos Pais"', 105, 4),
('"O Medo de Amar é o Medo de Ser Livre"', 207, 5),
('"Samba em Paris"', 267, 6),
('"The Bard\'s Song"', 244, 7),
('"Feeling Good"', 100, 8);

-- Inserção de dados na tabela Historico
INSERT INTO SpotifyClone.Historico (pessoa_usuaria_id, Musicas_id, data_reproducao) VALUES
(1, 1, '2022-02-28 10:45:55'),
(1, 2, '2020-05-02 05:30:35'),
(1, 8, '2020-03-06 11:22:33'),
(2, 8, '2022-08-05 08:05:17'),
(2, 5, '2020-01-02 07:40:33'),
(3, 8, '2020-11-13 16:55:13'),
(3, 3, '2020-12-05 18:38:30'),
(4, 6, '2021-08-15 17:10:10'),
(5, 6, '2022-01-09 01:44:33'),
(5, 3, '2020-08-06 15:23:43'),
(6, 8, '2017-01-24 00:31:17'),
(6, 1, '2017-10-12 12:35:20'),
(7, 2, '2011-12-15 22:30:49'),
(8, 2, '2012-03-17 14:56:41'),
(9, 7, '2022-02-24 21:14:22'),
(10, 4, '2015-12-13 08:30:22');