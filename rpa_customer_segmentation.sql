/* Reputable Product Agency (RPA) Customer Segmentation */

SELECT * FROM users LIMIT 20;
/*
id	email						campaign	test	created_at	birthday
1	gchesshire0@ucoz.ru								2017-01-26	1982-04-17
2	rbritner1@is.gd									2017-10-08	1970-01-16
3	acoysh2@canalblog.com							2017-09-05	1986-08-11
4	rbasley3@google.cn								2017-07-29	1960-08-29
5	kdury4@elpais.com								2017-05-28	1988-10-02
6	ssnowball5@ucoz.com								2017-11-23	1962-06-13
7	dbagshaw6@elpais.com							2017-11-17	1963-12-17
8	tdurden7@usgs.gov						bears	2017-04-09	1989-08-12
9	rtinn8@archive.org								2017-01-14	1960-11-08
10	styndall9@vimeo.com						bears	2017-11-05	1976-01-20
11	tmacmeanmaa@tripadvisor.com						2017-11-02	1985-01-09
12	hhandmanb@macromedia.com				bears	2017-05-29	1963-10-24
13	mbixleyc@seesaa.net								2017-05-22	1967-09-16
14	torowaned@patch.com								2017-03-27	1963-02-24
15	gsharlande@barnesandnoble.com					2017-08-03	1960-12-30
16	gwrefordf@globo.com								2017-05-11	1967-02-20
17	vdimmerg@123-reg.co.uk			AAA-1			2017-02-04	1983-05-07
18	mmcardh@ezinearticles.com						2017-06-01	1985-04-18
19	bsprasoni@paginegialle.it						2017-06-10	1984-05-19
20	hyakunkinj@yellowbook.com						2017-10-09	1989-03-03
*/


SELECT email, birthday FROM users 
WHERE birthday >= '1980-01-01' AND birthday <= '1989-12-31';
 /* Alternatively */
SELECT email, birthday FROM users 
WHERE birthday BETWEEN '1980-01-01' AND '1989-12-31';
/*
email							birthday
gchesshire0@ucoz.ru				1982-04-17
acoysh2@canalblog.com			1986-08-11
kdury4@elpais.com				1988-10-02
tdurden7@usgs.gov				1989-08-12
tmacmeanmaa@tripadvisor.com		1985-01-09
.... 1000 rows returned
*/


SELECT email, created_at FROM users WHERE created_at < '2017-05-01';
/*
email	created_at
gchesshire0@ucoz.ru	2017-01-26
tdurden7@usgs.gov	2017-04-09
rtinn8@archive.org	2017-01-14
torowaned@patch.com	2017-03-27
vdimmerg@123-reg.co.uk	2017-02-04
.... 
*/


SELECT email FROM users WHERE test = 'bears';
/*
email
tdurden7@usgs.gov
styndall9@vimeo.com
hhandmanb@macromedia.com
bnoadsu@howstuffworks.com
sirving13@php.net
*/


SELECT email FROM users WHERE campaign LIKE 'BBB%';
/*
email
egashion1j@angelfire.com
jfawley22@zdnet.com
wstruijs2k@kickstarter.com
gtetlow3c@jimdo.com
csmogur3q@sbwire.com
*/


SELECT email FROM users WHERE campaign LIKE '%-2';
/*
email
egashion1j@angelfire.com
wstruijs2k@kickstarter.com
csmogur3q@sbwire.com
jgleader3u@imageshack.us
dshuttleworth41@reference.com
sboud48@epa.gov
bgilham4p@vk.com
mbuscombe4w@51.la
wtaill68@mac.com
*/


SELECT email FROM users WHERE campaign IS NOT NULL AND test IS NOT NULL;
/*
email
csmogur3q@sbwire.com
rpressman7g@1und1.de
sivan8t@constantcontact.com
teamerb7@cbslocal.com
ckauffmandj@w3.org
laffusodk@jugem.jp
bspencookeg@youku.com
gwickershamft@themeforest.net
jsaffonha@tinypic.com
*/

