/* Working with a database; table is 'movies'. */
SELECT name, genre, year FROM movies;


/* `AS` is a keyword in SQL that allows you to rename a column 
or table using an alias. The new name can be anything you want 
as long as you put it inside of single quotes. */
SELECT name AS 'Movie Titles' FROM movies;

SELECT imdb_rating AS 'IMDB' FROM movies;


/* `DISTINCT` is used to return unique values in the output. 
It filters out all duplicate values in the specified column(s). */
SELECT DISTINCT genre FROM movies;

SELECT DISTINCT year FROM movies;

SELECT DISTINCT genre, year FROM movies;


/* `WHERE` clause filters the result set to only include 
rows where the following condition is true. Also worthy of 
note, within a WHERE clause you can compare the values of 
two columns. Here are a list of operators for reference,
= equal to
!= not equal to
> greater than
< less than
>= greater than or equal to
<= less than or equal to
*/ 
SELECT * FROM movies WHERE imdb_rating < 5;

SELECT * FROM movies WHERE year >= 2010;

SELECT * FROM movies WHERE year = 2013;

SELECT x, y FROM graph WHERE x > y;


/* `LIKE` is a special operator used with the WHERE clause to 
search for a specific pattern in a column. */
SELECT * FROM movies WHERE name LIKE 'Se_en';
/* Output: 
id	name	genre	year	imdb_rating
219	Se7en	drama	1995	8.6
220	Seven	drama	1979	6.1
*/ 

SELECT * FROM movies WHERE id LIKE '2__';

SELECT * FROM movies WHERE name LIKE '%man%';
/* Output:
id	name										genre	year	imdb_rating
9	Pirates of the Caribbean: Dead Mans Chest	action	2006	7.3
10	Iron Man 3	                                action	2013	7.3
11	Spider-Man	                                action	2002	7.3
14	Spider-Man 2								action	2004	7.3
18	Spider-Man 3								action	2007	6.2
21	Iron Man									action	2008	7.9
23	Iron Man 2									action	2010	7.1
31	Man of Steel								action	2013	7.2
34	The Amazing Spider-Man						action	2012	7.1
39	Batman										action	1989	7.6
164	Pretty Woman								romance	1990	6.9
208	Rain Man									drama	1988	8.0
*/

SELECT * FROM movies WHERE name LIKE 'The %';


/* You will encounter data with missing values; these values are 
indicated by `NULL`. It is not possible to test for NULL values 
with comparison operators, such as = and !=. Instead, we will have 
to use `IS NULL` and `IS NOT NULL`. */
SELECT name FROM movies WHERE imdb_rating IS NOT NULL;

SELECT name FROM movies WHERE imdb_rating IS NULL;


/* The BETWEEN operator is used in a WHERE clause to filter the result 
set within a certain range. It accepts two values that are either 
numbers, text or dates. Numerical values are inclusive of the second 
value. But string values are NOT inclusive of the second value. */
SELECT * FROM movies WHERE year BETWEEN 1990 AND 1999;

SELECT * FROM movies WHERE year BETWEEN 1970 AND 1979;

SELECT * FROM movies WHERE name BETWEEN 'A' AND 'J';

SELECT * FROM movies WHERE name BETWEEN 'D' AND 'G';

SELECT * FROM movies WHERE year BETWEEN 1990 AND 1999 AND genre = 'romance';

SELECT * FROM movies WHERE year BETWEEN 1970 AND 1979 AND imdb_rating > 8;

SELECT * FROM movies WHERE year < 1985 AND genre = 'horror';


/* Similar to `AND`, the `OR` operator can also be used to combine multiple 
conditions in `WHERE`, but there is a difference; AND operator displays a 
row if all the conditions are true, but OR operator displays a row if any 
condition is true. */
SELECT * FROM movies WHERE year > 2014 OR genre = 'action';

SELECT * FROM movies WHERE genre = 'romance' OR genre = 'comedy';

SELECT * FROM movies WHERE (id > 10 AND id < 20) OR (id > 50 AND id < 60);


/* It is often useful to list the data in our result set in a particular 
order. We can sort the results using ORDER BY, either alphabetically or 
numerically. */
SELECT * FROM movies ORDER BY name;

SELECT * FROM movies WHERE imdb_rating > 8 ORDER BY year DESC;

SELECT name, year FROM movies ORDER BY name;

SELECT name, year, imdb_rating FROM movies ORDER BY imdb_rating DESC;


/* Most SQL tables contain hundreds of thousands of records. In those 
situations, it becomes important to cap the number of rows in the result. */
SELECT * FROM movies LIMIT 10;

SELECT * FROM movies ORDER BY imdb_rating DESC LIMIT 3;


/* A CASE statement allows us to create different outputs (usually in 
the SELECT statement). It is SQL’s way of handling if-then logic. */
SELECT name,
 CASE
  WHEN imdb_rating > 8 THEN 'Fantastic'
  WHEN imdb_rating > 6 THEN 'Poorly Received'
  ELSE 'Avoid at All Costs'
 END AS 'Review'
FROM movies;

SELECT name,
 CASE
  WHEN genre = 'romance' OR genre = 'comedy' 
   THEN 'Chill'
  ELSE 'Intense'
 END AS 'Mood'
FROM movies;

