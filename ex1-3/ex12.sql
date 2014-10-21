/* only drop if exists */
DROP TABLE IF EXISTS person;

/* create again to work */
CREATE TABLE person (
	id INTEGER PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	age INTEGER
);

/* rename the table to people */
ALTER TABLE person RENAME TO peoples;

/* add a hatred column to peoples */
ALTER TABLE peoples ADD COLUMN hatred INTEGER;

/* rename peoples back to person */
ALTER TABLE peoples RENAME TO person;

.schema person

/* we dont need it*/
DROP TABLE person;