
/* changes to people*/
ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN dob DATETIME;

REPLACE INTO person(id, first_name, last_name, age, dead, phone_number, dob) 
	VALUES (0, "Eugene", "Tyulmenkov", 23, 0, 5555555, 01-01-1990);

/* changes to pet*/
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN purchase_on DATETIME;
ALTER TABLE pet ADD COLUMN parent INTEGER;

REPLACE INTO pet (id, name, breed, age, dead, dob, purchase_on, parent)
	VALUES (0, "Tulouse", "Cat", 12, 0, 01-01-2001, 01-02-2001, 0);
	
	
SELECT * FROM person;

SELECT * FROM pet;