/* Working with a database full of movies; table is 'movies'. */
SELECT name, genre, year FROM movies;


/* AS is a keyword in SQL that allows you to rename a column 
or table using an alias. The new name can be anything you want 
as long as you put it inside of single quotes. */
SELECT name AS 'Movie Titles' FROM movies;

SELECT imdb_rating AS 'IMDB' FROM movies;


/* DISTINCT is used to return unique values in the output. 
It filters out all duplicate values in the specified column(s). */
SELECT DISTINCT genre FROM movies;

SELECT DISTINCT year FROM movies;

SELECT DISTINCT genre, year FROM movies;


/* WHERE clause filters the result set to only include 
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


/* LIKE is a special operator used with the WHERE clause to 
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



