SELECT year, number FROM babies WHERE name LIKE 'lillian';

SELECT name FROM babies WHERE name LIKE 'S%' LIMIT 20;

SELECT name, gender, number 
FROM babies 
WHERE year = 1880 
ORDER BY number 
DESC LIMIT 10;


SELECT * FROM nomnom WHERE cuisine = 'Japanese' AND price = '$$';

SELECT * FROM nomnom WHERE name LIKE '%noodle%';

SELECT * FROM nomnom WHERE health IS NULL;


SELECT title, publisher FROM news ORDER BY title ASC; 

SELECT * FROM news WHERE title LIKE '%bitcoin%';

SELECT * 
FROM news 
WHERE category = 'b' 
ORDER BY timestamp DESC
LIMIT 20;

