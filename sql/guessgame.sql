DROP DATABASE IF EXISTS guessGame;

CREATE DATABASE guessGame;

USE guessGame;

CREATE TABLE Game(
    game_id int PRIMARY KEY AUTO_INCREMENT,
    answer varchar(25) NOT NULL,
    isFinished BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE Round(
    round_id int PRIMARY KEY AUTO_INCREMENT,
    game_id int,
    guess_time timeStamp,
    guess varchar(10),
    result VarcHAR(8)
);

ALTER TABLE
    Round
ADD
    CONSTRAINT fk_round_game FOREIGN KEY (game_id) REFERENCES Game(game_id);

DROP DATABASE IF EXISTS guessGame_tests;

CREATE DATABASE guessGame_tests;

USE guessGame_tests;

CREATE TABLE Game(
    game_id int PRIMARY KEY AUTO_INCREMENT,
    answer varchar(25) NOT NULL,
    isFinished BOOLEAN NOT NULL DEFAULT 0
);

CREATE TABLE Round(
    round_id int PRIMARY KEY AUTO_INCREMENT,
    game_id int,
    guess_time timeStamp,
    guess varchar(10),
    result VarcHAR(8)
);

ALTER TABLE
    Round
ADD
    CONSTRAINT fk_round_game FOREIGN KEY (game_id) REFERENCES Game(game_id);