-- SQL BASICS --
/* 
- CREATE TABLE creates a new table.
- ALTER TABLE adds/removes/modifies columns on an existing table.
- INSERT INTO adds a new row to a table.
- UPDATE edits a row in a table.
- SELECT queries data from a table.
- DELETE FROM deletes rows from a table.
*/


/* CREATE statements allow us to 
create a new table in the database. */
CREATE TABLE farm_crops (
   id INTEGER, 
   name TEXT, 
   crops INTEGER
); 


/* The ALTER TABLE statement adds a 
new column to a table. You can use this 
command when you want to add columns 
to a table. */
ALTER TABLE farm_crops
ADD COLUMN weeks_per_crop
INTEGER;


/* The INSERT statement inserts a 
new row into a table. You can use 
the INSERT statement when you want 
to add new records. */
INSERT INTO farm_crops (id,
name, crops)
VALUES (1, 'Golden Beets', 2);

INSERT INTO farm_crops (id, 
name, crops)
VALUES (2, 'Nectarine Carrots', 4);

INSERT INTO farm_crops (id, 
name, crops)
VALUES (3, 'Emperor Spinach', 8);


/* The UPDATE statement edits a row in a 
table. You can use the UPDATE statement 
when you want to change existing records. */ 
UPDATE farm_crops 
SET weeks_per_crop = 9
WHERE id = 2; 


/* The SELECT statement is how we query data 
from a table. */
SELECT * FROM farm_crops; 


/* The DELETE FROM statement deletes one 
or more rows from a table. You can use the 
statement when you want to delete existing 
records. */
DELETE FROM farm_crops 
WHERE weeks_per_crop IS NULL;
/* IS NULL is a condition in SQL that returns 
true when the value is NULL and false otherwise. */


/* Constraints that add information about how 
a column can be used are invoked after specifying 
the data type for a column. They can be used to 
tell the database to reject inserted data that does 
not adhere to a certain restriction. */
CREATE TABLE farm_crops (
   id INTEGER PRIMARY KEY, 
   name TEXT UNIQUE,
   date_of_planting TEXT NOT NULL,
   date_of_harvest TEXT DEFAULT 'Not Applicable'
);
/* NOT NULL columns must have a value. Attempts to 
insert a row without a value for a NOT NULL column 
will result in a constraint violation and the new row 
will not be inserted.*/
