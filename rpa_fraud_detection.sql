/* Reputable Product Agency (RPA) Fraud Detection Project */

SELECT * FROM transaction_data LIMIT 10;
/*
Database Schema
id	full_name			email						zip		ip_address
1	Menard Peniman		mpeniman0@yahoo.co.jp		92132	223.107.70.220
2	Paulita Boome		pboome1@over-blog.com		94154	164.183.91.223
3	Barnabe Unthank		bunthank2@blinklist.com		65110	167.248.251.58
4	Boigie Hughes		bhughes3@simplemachines.org	98104	219.28.158.36
5	Trudi Rawet			trawet4@multiply.com		91199	76.97.141.59
6	Elset Paviour		epaviour5@google.com		84105	93.210.178.222
7	Cammi Colthard		ccolthard6@newyorker.com	75049	126.17.241.252
8	Kristal Bleasdale	kbleasdale7@ca.gov			79977	192.94.201.227
9	Donovan Worsalls	dworsalls8@wikimedia.org	20078	101.219.105.228
10	Lynna Grindley		lgrindley9@studiopress.com	72204	149.164.116.199
*/


/* Finance annotates that some fraudulent transactions were recorded 
as coming from zip code 20252. They have also noted pseudonyms associated 
with fraudulent transactions; ‘Art Vandelay’ for the full name and ‘der’ for 
the middle name. */

SELECT full_name, email, zip FROM transaction_data WHERE zip = 20252;


SELECT full_name, email 
FROM transaction_data 
WHERE full_name = 'Art Vandelay' 
 OR full_name LIKE '% der %';
/*
full_name	email
Parrnell Van der Mark	pvan4q@craigslist.org
Art Vandelay	tloyb6@un.org
Art Vandelay	bstreightdp@example.com
Art Vandelay	bduvalfh@cpanel.net
Art Vandelay	acastgo@hibu.com
Art Vandelay	maimableia@hhs.gov
Art Vandelay	nmcnicklemw@springer.com
Art Vandelay	aiacomopx@ed.gov
*/


SELECT ip_address, email FROM transaction_data WHERE ip_address LIKE '10.%';
/*
ip_address		email
10.1.2.7		dlindmarkb8@utexas.edu
10.176.214.47	pnekrewsbd@reference.com
10.1.78.70		egligoracid6@hao123.com
10.84.225.46	eminchindenmk@google.com.br
10.1.2.3		spesicqp@google.it
10.1.2.4		lansettre@usgs.gov
*/


SELECT email FROM transaction_data WHERE email LIKE '%temp_email.com';
/*
email
obemwellw@temp_email.com
hmchm@temp_email.com
sfessionsll@temp_email.com
btibaldnd@temp_email.com
*/

SELECT * 
FROM transaction_data 
WHERE ip_address LIKE '120.%'
AND full_name LIKE 'John%';
/*
id	full_name			email						zip		ip_address
672	Johnathan Brilleman	jbrillemanin@tinypic.com	8922	120.66.58.128
*/
