DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Planos (
    planos_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE SpotifyClone.Clientes (
    pessoa_usuaria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pessoa_usuaria VARCHAR(255) NOT NULL,
    idade INT,
    planos_id INT,
    FOREIGN KEY (planos_id) REFERENCES SpotifyClone.Planos(planos_id)
);

CREATE TABLE SpotifyClone.Artistas (
    Artistas_id INT AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(255) NOT NULL
);

CREATE TABLE SpotifyClone.histórico_planos (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_usuaria_id INT NOT NULL,
    planos_id INT NOT NULL,
    `date` DATE NOT NULL,
	FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.Clientes(pessoa_usuaria_id),
    FOREIGN KEY (planos_id) REFERENCES SpotifyClone.Planos(planos_id)
);

CREATE TABLE SpotifyClone.Seguindo_Artistas (
    id_seguimento INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_usuaria_id INT,
    Artistas_id INT,
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.Clientes(pessoa_usuaria_id),
    FOREIGN KEY (Artistas_id) REFERENCES SpotifyClone.Artistas(Artistas_id),
    UNIQUE KEY (pessoa_usuaria_id, Artistas_id)
);

CREATE TABLE SpotifyClone.Album (
    album_id INT AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(255) NOT NULL,
    Artistas_id INT NOT NULL,
    ano_lancamento INT NOT NULL,
    FOREIGN KEY (Artistas_id) REFERENCES SpotifyClone.Artistas(Artistas_id)
);

CREATE TABLE SpotifyClone.Musica (
    Musicas_id INT AUTO_INCREMENT PRIMARY KEY,
    cancoes VARCHAR(255) NOT NULL,
    duracao_segundo INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.Album(album_id)
);

CREATE TABLE SpotifyClone.Historico (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_usuaria_id INT NOT NULL,
    Musicas_id INT NOT NULL,
    data_reproducao DATETIME NOT NULL,
    FOREIGN KEY (pessoa_usuaria_id) REFERENCES SpotifyClone.Clientes(pessoa_usuaria_id),
    FOREIGN KEY (Musicas_id) REFERENCES SpotifyClone.Musica(Musicas_id),
    UNIQUE KEY (pessoa_usuaria_id, Musicas_id, data_reproducao)
);

-- Inserção de dados na tabela Planos
INSERT INTO SpotifyClone.Planos (plano, valor) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99),
('pessoal', 6.99);

-- Inserção de dados na tabela Clientes
INSERT INTO SpotifyClone.Clientes (nome_pessoa_usuaria, idade, planos_id) VALUES
('Barbara Liskov', 82, 1),
('Robert Cecil Martin', 58, 1),
('Ada Lovelace', 37, 2),
('Martin Fowler', 46, 2),
('Sandi Metz', 58, 2),
('Paulo Freire', 19, 3),
('Bell Hooks', 26, 3),
('Christopher Alexander', 85, 4),
('Judith Butler', 45, 4),
('Jorge Amado', 58, 4);

-- Inserção de dados na tabela Artistas
INSERT INTO SpotifyClone.Artistas (artista) VALUES
('Beyoncé'),
('Queen'),
('Elis Regina'),
('Baco Exu do Blues'),
('Blind Guardian'),
('Nina Simone');

-- Inserção de dados na tabela histórico_planos
INSERT INTO SpotifyClone.histórico_planos (pessoa_usuaria_id, planos_id, `date`) VALUES
(1, 1, '2019-10-20'),
(2, 1, '2017-01-06'),
(3, 2, '2017-12-30'),
(4, 2, '2017-01-17'),
(5, 2, '2018-04-29'),
(6, 3, '2018-02-14'),
(7, 3, '2018-01-05'),
(8, 4, '2019-06-05'),
(9, 4, '2020-05-13'),
(10, 4, '2017-02-17');

-- Inserção de dados na tabela Seguindo_Artistas
INSERT INTO SpotifyClone.Seguindo_Artistas (pessoa_usuaria_id, Artistas_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(4, 4),
(5, 5),
(5, 6),
(6, 6),
(6, 1),
(7, 6),
(9, 3),
(10, 2);


-- Inserção de dados na tabela Album
INSERT INTO SpotifyClone.Album (album, Artistas_id, ano_lancamento) VALUES
('Renaissance', 1, 2022),
('Jazz', 2, 1978),
('Hot Space', 2, 1982),
('Falso Brilhante', 3, 1998),
('Vento de Maio', 3, 2001),
('QVVJFA?', 4, 2003),
('Somewhere Far Beyond', 5, 2007),
('I Put A Spell On You', 6, 2012);

-- Inserção de dados na tabela Musica
INSERT INTO SpotifyClone.Musica (cancoes, duracao_segundo, album_id) VALUES
("BREAK MY SOUL", 279, 1),
("VIRGO'S GROOVE",369, 1),
("ALIEN SUPERSTAR", 116, 1),
("Don't Stop Me Now", 203, 2),
("Under Pressure", 152, 3),
("Como Nossos Pais", 105, 4),
("O Medo de Amar é o Medo de Ser Livre", 207, 5),
("Samba em Paris", 267, 6),
("The Bard's Song", 244, 7),
("Feeling Good", 100, 8);

-- Inserção de dados na tabela Historico
INSERT INTO SpotifyClone.Historico (pessoa_usuaria_id, Musicas_id, data_reproducao) VALUES
(1, 8, '2022-02-28 10:45:55'),
(1, 2, '2020-05-02 05:30:35'),
(1, 10, '2020-03-06 11:22:33'),
(2, 10, '2022-08-05 08:05:17'),
(2, 7, '2020-01-02 07:40:33'),
(3, 10, '2020-11-13 16:55:13'),
(3, 2, '2020-12-05 18:38:30'),
(4, 8, '2021-08-15 17:10:10'),
(5, 8, '2022-01-09 01:44:33'),
(5, 5, '2020-08-06 15:23:43'),
(6, 7, '2017-01-24 00:31:17'),
(6, 1, '2017-10-12 12:35:20'),
(7, 4, '2011-12-15 22:30:49'),
(8, 4, '2012-03-17 14:56:41'),
(9, 9, '2022-02-24 21:14:22'),
(10, 3, '2015-12-13 08:30:22');