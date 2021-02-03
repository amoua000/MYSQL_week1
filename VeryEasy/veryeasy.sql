-- easy challenge

USE mysql_challenges;

CREATE TABLE cars (
id INT AUTO_INCREMENT PRIMARY KEY,
make VARCHAR(30),
model VARCHAR(30),
year INT
);

use cars;

DESCRIBE cars;
my

 INSERT INTO cars (make,model,year)
VALUES('Toyota','Supra',1994),('Toyota','Corolla',2020),('Nissan','Skyline',1996);


