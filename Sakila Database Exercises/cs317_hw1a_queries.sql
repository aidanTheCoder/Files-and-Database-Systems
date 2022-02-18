SHOW DATABASES;

SHOW GRANTS;

SHOW TABLES;

SELECT * FROM film;

DESCRIBE film;

SHOW COLUMNS FROM sakila.actor;

SELECT first_name, last_name FROM actor ORDER BY first_name ASC;

SELECT first_name, last_name FROM actor ORDER BY last_name ASC;

SELECT COUNT(*) FROM actor WHERE last_name = 'wood';

CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), 
sex CHAR(1), birth DATE, death DATE);

INSERT INTO pet VALUES ('Fluffy', 'Harold', 'cat', 'f', '1993-02-04', NULL);
INSERT INTO pet VALUES ('Claws', 'Gwen', 'cat', 'm', '1994-03-17', NULL);
INSERT INTO pet VALUES ('Buffy', 'Harold', 'dog', 'f', '1989-05-13', NULL);
INSERT INTO pet VALUES ('Fang', 'Benny', 'dog', 'm', '1990-08-27', NULL);
INSERT INTO pet VALUES ('Bowser', 'Diane', 'dog', 'm', '1989-08-31', '1995-07-29');
INSERT INTO pet VALUES ('Chirpy', 'Gwen', 'bird', 'f', '1998-09-11', NULL);
INSERT INTO pet VALUES ('Whistler', 'Gwen', 'bird', NULL, '1997-12-09', NULL);
INSERT INTO pet VALUES ('Slim', 'Benny', 'snake', 'm', '1996-04-29', NULL);
INSERT INTO pet VALUES  ('Puffball', 'Diane', 'hamster', 'f', '1999-03-30', NULL);

CREATE TABLE myhomes (name VARCHAR(20), owner VARCHAR(20), species 
VARCHAR(20), sex CHAR(1), birth DATE, death DATE);

INSERT INTO myhomes (34325, 'Road A', 'Schenectady', 12345, 4, 2);
INSERT INTO myhomes (123, 'Main St', 'Gotham City', 10364, 1, 1);
INSERT INTO myhomes (1600, 'Pennsylvania Ave NW', 'Washington D.C.', 20006, 5, 30);
INSERT INTO myhomes (9303, 'Lyon Dr', 'Hill Valley', 95420, 3, 2);
INSERT INTO myhomes (0001, 'Cemetery Ln', 'Westfield', 07090, 4, 3);
INSERT INTO myhomes (1407, 'Graymalkin Ln', 'Salem Center', 12865, 8, 6);
INSERT INTO myhomes (31, 'Spooner St', 'Quahog', 00093, 4, 2);
INSERT INTO myhomes (416,'Cherry St', 'Langley Falls', 23665, 3, 2);

SHOW TABLES;

SELECT * FROM event;

SELECT * FROM pet;

SELECT * FROM myhomes;