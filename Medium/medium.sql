-- Medium Challenge 

USE mysql_challenges;


CREATE TABLE movies2 (
id INT AUTO_INCREMENT PRIMARY KEY,
Title VARCHAR(50),
Release_Date INT,
Rating VARCHAR(10)
);

INSERT INTO movies2 (Title,Release_Date,Rating)
VALUES('Men in Black',1997,'R'),('Jumanji',1995,'PG-13'),('TLOTR: The Return of the King ',2003,'R'),('Monster Hunter',2020,'PG-13'),('Inside Out ',2015,'PG'),('Shrek',2001,'PG');

INSERT INTO movies2 (Title,Release_Date,Rating)
VALUES('Pokémon Detective Pikachu',2019,'PG'),('Star Wars: Episode IX - The Rise of Skywalker',2019,'PG-13'),('Moana ',2016,'PG'),('Coco',2017,'PG');




SELECT * FROM movies2 
WHERE Title LIKE 'S%'
ORDER BY Release_Date ASC;
