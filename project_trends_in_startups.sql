/* Trends in Stratups
You are tasked with writing an article on the rising trend in the startup world.
You have been given a file, project.sqlite, and it contains a table called startups.
Use queries with aggregate functions to retrieve some interesting insights about
these companies.  Let's have a go! */

SELECT * FROM startups;
/*
name					location		category			employees	...
Pied Piper				Silicon Valley	Cloud Computing		6	
Hooli					Silicon Valley	Enterprise			9000	
Raviga Capital			Silicon Valley	Venture Capital		12	
Aviato					Silicon Valley	Travel				3	
SEE FOOD				Silicon Valley	Mobile				2		
Forbid					New York		Mobile				25	
Soulstice				New York		Fitness				300	
E-Corp					New York		Enterprise			10000		
Allsafe Cybersecurity	New York		Security			250	
fsociety				Brooklyn		Games				5			
Summit Ice				Los Angeles		Fashion				2	
.....  70 rows 
*/

/*
	Database Schema
		Stratups 						
name				TEXT
location			TEXT
category			TEXT
employees			INTEGER
raised				INTEGER
valuation			INTEGER
founded				INTEGER
stage				TEXT
ceo					TEXT
info				TEXT
......  10 Columns 
*/


-- Calculate the total number of companies in the table
SELECT COUNT(*) FROM startups;
-- Output:  COUNT(*)  70


-- Calculate the total value of all the companies in the table
SELECT SUM(valuation) FROM startups;
-- Output:  $974,455,790,000


-- What is the highest amount raised by a startup? Return the max amount raised.
SELECT MAX(raised) FROM startups;
-- Output:  $11,500,000,000


-- Write a query that returns the max amount raised during 'Seed' stage.
SELECT MAX(raised) 
FROM startups
WHERE stage = 'Seed';
-- Output:  $1,800,000


-- In what year was the oldest company on the list founded?
SELECT MIN(founded) FROM startups;
-- Output:  1994


-- Return the average valuation.
SELECT AVG(valuation) FROM startups;
-- Output:  $15,974,685,081.9672


-- Return the average valuation, in each category.
SELECT category, AVG(valuation) 
FROM startups
GROUP BY category;

-- Now round the averages to two decimal places.
SELECT category, ROUND(AVG(valuation), 2) 
FROM startups
GROUP BY category;

-- Lastly, order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY 1
ORDER BY 2 DESC;

/*
category				ROUND(AVG(valuation), 2)
Health Care				380490000000.0
Enterprise				38508333333.33
Real Estate				20000000000.0
Travel					12501250000.0
Augmented Reality		8000000000.0
Security				6333333333.33
Technology				3100000000.0
Venture Capital			3000000000.0
Education				2023800000.0
Customer Service		640000000.0
SaaS					401000000.0
Gambling				322000000.0
Nanotechnology			150000000.0
Cloud Computing			95000000.0
Social					82425833.33
Logistics				70000000.0
Fitness					67500000.0
E-commerce				60250000.0
Big Data Analytics		15000000.0
Mobile					9600000.0
Algorithms				7600000.0
NULL					4290000.0
Fashion					3200000.0
Virtual Reality			2150000.0
Games					1600000.0
Data Analytics			NULL
Video Streaming			NULL
*/


-- First, return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*) 
FROM startups 
GROUP BY category; 

-- Next, filter the result to only include categories that have more than three companies in them.
SELECT category, COUNT(*) 
FROM startups
GROUP BY category
HAVING COUNT(*) > 3; 
/* Because you are filtering on a condition that has an aggregate function, 
you need to use HAVING instead of WHERE */


-- What is the average size of a startup in each location?
SELECT location, AVG(employees))
FROM startups
GROUP BY location;

-- What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;

