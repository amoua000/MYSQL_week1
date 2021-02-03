-- hard challenge

USE mysql_challenges;

-- Make a copy of your Medium Challenge Write out the queries that would add the director’s First Name and Last Name into two separate columns

CREATE TABLE movies2copy select * from movies2;


SELECT * FROM movies2copy;

ALTER TABLE movies2copy
ADD directors_first_name VARCHAR(125);

ALTER TABLE movies2copy
ADD directors_last_name VARCHAR(125);

INSERT INTO movies2copy (directors_first_name,directors_last_name)
VALUES('Barry','Sonnenfeld'),('Joe','Johnston'),('Peter','Jackson'),('Paul','Anderson'),('Pete','Docter'),('Andrew','Andamson'),('Rob','Letterman'),('J.J','Abrams'),('Ron','Clements'),('Lee','Unkrich');

UPDATE movies2copy
SET 
directors_first_name ='Barry',
directors_last_name = 'Sonnenfeld'
WHERE Title ='Men in Black';

UPDATE movies2copy
SET 
directors_first_name ='Joe',
directors_last_name = 'Johnston'
WHERE Title ='Jumanji';

UPDATE movies2copy
SET 
directors_first_name ='Paul',
directors_last_name = 'Anderson'
WHERE Title ='TLOTR: The Return of the King ';

UPDATE movies2copy
SET 
directors_first_name ='Peter',
directors_last_name = 'Doctor'
WHERE Title ='Monster Hunter';

UPDATE movies2copy
SET 
directors_first_name ='Andrew',
directors_last_name = 'Andamson'
WHERE Title ='Inside Out ';

UPDATE movies2copy
SET 
directors_first_name ='Rob',
directors_last_name = 'Letterman'
WHERE Title ='Shrek';

UPDATE movies2copy
SET 
directors_first_name ='J.J',
directors_last_name = 'Abrams'
WHERE Title ='Pokémon Detective Pikachu';

UPDATE movies2copy
SET 
directors_first_name ='Clement',
directors_last_name = 'Ron'
WHERE Title ='Star Wars: Episode IX - The Rise of Skywalker';

UPDATE movies2copy
SET 
directors_first_name ='John',
directors_last_name = 'Ron'
WHERE Title ='Moana ';

UPDATE movies2copy
SET 
directors_first_name ='Lee',
directors_last_name = 'Ulkrich'
WHERE Title ='Coco';

-- puts together autors first and last name
SELECT CONCAT(directors_first_name, ' ', directors_last_name) 
AS 'Together' 
FROM movies2copy;

SELECT * FROM movies2copy;

-- Create a query to put the list in alphabetical order by the last name from A-Z 
SELECT directors_last_name FROM movies2copy 
ORDER BY directors_last_name ASC;

-- After you order the list, remove the Movies where the Last Name ends with ”R-Z” 
SELECT * FROM movies2copy
WHERE directors_last_name >= 'R%';

-- Write a query where the first three appear
SELECT directors_last_name FROM movies2copy
ORDER BY directors_last_name
LIMIT 3;



