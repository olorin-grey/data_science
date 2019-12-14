/* Using CREATE TABLE to make a new table
that holds friend information. */
CREATE TABLE friends (
   id INTEGER, 
   name TEXT, 
   birthday DATE
);


/* Now add some friends:
INSERT INTO table_name (column1, column2, column3) 
VALUES (value1, value2, value3); 
Remember the `DATE` format is YYYY-MM-DD. */
INSERT INTO friends (id, name, birthday) 
VALUES (1, 'Jane Doe', '1990-05-30');

INSERT INTO friends (id, name, birthday) 
VALUES (2, 'Connor McBurney', '1990-06-12');

INSERT INTO friends (id, name, birthday) 
VALUES (3, 'Carlton Wingett Jr.', '1991-03-27');


/* Check your work */
SELECT * FROM friends;


/* Looks like Jane just got married and she 
has a new last name. Better update it. 
UPDATE table_name
SET column1 = value1
WHERE condition;
*/
UPDATE friends
SET name = 'Jane Smith'
WHERE id = 1;


/* Everyone wants to email now. Better make a new 
column to hold all their email addresses. 
ALTER TABLE table_name
ADD COLUMN column DATA_TYPE;
*/
ALTER TABLE friends 
ADD COLUMN email TEXT; 

UPDATE friends
SET email = 'jane@outlook.com'
WHERE id = 1;

UPDATE friends
SET email = 'connor@gmail.com'
WHERE id = 2;

UPDATE friends
SET email = 'skip@protonmail.com'
WHERE id = 3;


/* Wait, Jane is not a real person.  Delete her. */
DELETE FROM friends
WHERE id = 1;
