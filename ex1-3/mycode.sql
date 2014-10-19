/* ex2 */
CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER
);

CREATE TABLE pet (
	id INTEGER PRIMARY KEY,
	name TEXT,
	breed TEXT,
	age INTEGER,
	dead INTEGER
);

CREATE TABLE person_pet (
	person_id INTEGER,
	pet_id INTEGER
);

/* ex3 */
INSERT INTO person(id, first_name, last_name, age) 
	VALUES (0, "Eugene", "Tyulmenkov", 23);

INSERT INTO pet (id, name, breed, age, dead)
	VALUES (0, "Tulouse", "Cat", 12, 0);

INSERT INTO pet VALUES (1, "Giagantor", "Robot", 1, 1);

/* ex4 */
INSERT INTO person_pet (person_id, pet_id) VALUES (0,0);
INSERT INTO person_pet VALUES (0, 1);

/* ex5 */
SELECT * FROM person;

SELECT name, age FROM pet;

SELECT name, age FROM pet WHERE dead = 0;

SELECT * FROM person WHERE first_name != "Eugene";

/* ex7 */
SELECT pet.id, pet.name, pet.age, pet.dead
	FROM pet, person_pet, person
	WHERE
	pet.id = person_pet.pet_id AND
	person_pet.person_id = person.id AND
	person.first_name = "Eugene";