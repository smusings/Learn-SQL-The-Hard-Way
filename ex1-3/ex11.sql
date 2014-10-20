/*this should fail because 0 is taken*/
INSERT INTO person (id, first_name, last_name, age)
	VALUES (0, 'Frank', 'Miller', 100);
	
/* we can force it by doing insert or replace */
INSERT OR REPLACE INTO person (id, first_name, last_name, age)
	VALUES (0, 'Frank', 'Miller', 100);
	
SELECT * FROM person;

/* and shorthand into replace */
REPLACE INTO person (id, first_name, last_name, age)
	VALUES (0, 'Eugene', 'Tyulmenkov', 23);
	
SELECT * FROM person;