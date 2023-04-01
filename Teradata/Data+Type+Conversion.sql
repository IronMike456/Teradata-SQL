
--CAST: To convert from one data type to another

SELECT 
TYPE('1500'),
CAST('1500' AS INT),
TYPE(CAST('1500' AS INT));

SELECT
CAST('1500' AS DEC(6,2)),
TYPE(CAST('1500' AS DEC(6,2)));

SELECT
CAST('0150' AS INT);


SELECT TOP 50
"Title"||' '||First_Name||' '||Last_Name||' is '||CAST(2021-Birth_Year AS CHAR(2))||' years old' AS Player
FROM CHESS.Players
ORDER BY Rating DESC; --converts number to char(n)


SELECT 
TYPE('2004-06-15'),
CAST('2004-06-15' AS DATE), --to convert string to date
TYPE(CAST('2004-06-15' AS DATE));


SELECT 
TYPE('06-15-2004'),
CAST('06-15-2004' AS DATE FORMAT 'MM-DD-YYYY'), --for non-default Date formats the format should be given
TYPE(CAST('06-15-2004' AS DATE));


SELECT 
TYPE('MAY 12, 1990'),
CAST('MAY 12, 1990' AS DATE FORMAT 'MMMBDD,BYYYY'), --the Date formats can be more complicated
TYPE(CAST('MAY 12, 1990' AS DATE FORMAT 'MMMBDD,BYYYY'));


SELECT
CURRENT_DATE,
CAST(CURRENT_DATE AS VARCHAR(10)) DT_10,
CAST(CURRENT_DATE AS VARCHAR(50)) DT_50;




SELECT
CURRENT_TIMESTAMP(0),
CAST(CURRENT_TIMESTAMP(0) AS VARCHAR(25)) TS0_25,
CAST(CURRENT_TIMESTAMP(0) AS VARCHAR(19)) TS0_19,
CAST(CURRENT_TIMESTAMP(0) AS VARCHAR(10)) TS0_10;


SELECT
CURRENT_TIMESTAMP(6),
CAST(CURRENT_TIMESTAMP(6) AS VARCHAR(33)) TS6_33,
CAST(CURRENT_TIMESTAMP(6) AS VARCHAR(26)) TS6_26,
CAST(CURRENT_TIMESTAMP(6) AS VARCHAR(10)) TS6_10;


SELECT CAST(CURRENT_DATE AS INT); --The formula is (year - 1900) * 10000 + (month * 100) + day


SELECT CAST(1250421 AS DATE); --should give 2025/04/21



-- TO_CHAR: to convert to string (varchar data type) 

SELECT
TO_CHAR(CURRENT_DATE),
TO_CHAR(CURRENT_TIMESTAMP),
TO_CHAR(200);



-- TO_NUMBER: to convert to NUMBER

SELECT 
TO_NUMBER('0100'),
TO_NUMBER('0100') + TO_NUMBER('003');



-- TO_DATE: to convert to DATE

SELECT
TO_DATE('2020-06-30'),
TYPE(TO_DATE('2020-06-30'));

SELECT
'2020-06-30' (DATE),
TYPE('2020-06-30'(DATE));
