-- very hard 
USE mysql_challenges;

CREATE TABLE cars_copy select * from cars;

SELECT * FROM cars_copy;

-- Write a query to add in three cars at once 
INSERT INTO cars_copy(make, model, year) 
VALUES ('Chevy', 'Silverado', 2021),('Mercedes', 'Mclaren', 2021),('Ford', 'Mustang', 2021);

-- Write a query to add in prices and colors for each of these cars 

ALTER TABLE cars_copy ADD price INT, ADD color VARCHAR(10);

-- adds price and color to make and model if needed
UPDATE cars_copy
SET `price`=60000, `color`='red' 
WHERE model='Supra';

-- Write a query to put the Make and Model together in one column 

SELECT CONCAT(make, ' ', model)
 AS 'make and model' 
FROM cars_copy;

-- Create a new query that adds an additional column to the results to show how many cars have the same Make.

SELECT DISTINCT make, COUNT('model') 
AS results 
FROM cars 
GROUP BY make;


