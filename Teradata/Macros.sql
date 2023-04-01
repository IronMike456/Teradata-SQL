
--macros contain prewritten SQL

--Syntax to create a macro

CREATE MACRO my_macro AS
(
SELECT * FROM chess.players
where rating > 2800;
);




--EXEC or EXECUTE for running the macro

EXEC my_macro;



--to drop a macro

DROP MACRO my_macro;



--REPLACE can be used instead of CREATE to create or replace a macro

REPLACE MACRO my_macro AS
(
SELECT * FROM chess.players
where rating > 2802;
);




--macros can run multiple statements
--make sure to use ; after each statement in the macro

REPLACE MACRO my_macro AS
(
SELECT * FROM chess.players
where rating > 2802;
SELECT * from chess.players
where first_name like 'vlad%';

);


exec my_macro;



--macros can use inputs

REPLACE MACRO my_macro (input_1 INTEGER) AS
(
SELECT * FROM chess.players
where rating >:input_1 ;
);



EXEC my_macro(2780);


--multiple parameters

REPLACE MACRO my_macro (input_1 INTEGER, input_2 INTEGER) AS
(
SELECT * FROM chess.players
where rating BETWEEN :input_1 AND :input_2 ;
);



EXEC my_macro(2720, 2730);


--macros can have DDL statements

REPLACE MACRO my_macro AS
(
CREATE TABLE chess.players_copy as (select * from chess.players where first_name like 'vlad%') with data;
);

exec my_macro;


sel * from chess.players_copy;


drop table chess.players_copy



--DDL statements should be the only statement in a macro

REPLACE MACRO my_macro AS
(
SELECT * from chess.players where first_name like 'Mag%';
CREATE TABLE chess.players_copy as (select * from chess.players where first_name like 'vlad%') with data;

);





--DBC columns table contains all columns. Really helpful


SELECT Databasename, tablename, columnname
from dbc.columns 
where columnname like '%game%';





--Now creating that as a macro

REPLACE MACRO column_finder (pattern_input VARCHAR(50))
AS
(
SELECT Databasename,
tablename, 
columnname
from dbc.columns 
where columnname like :pattern_input;
);



EXEC column_finder('audit');



--including wildcards in the macro

REPLACE MACRO column_finder (pattern_input VARCHAR(50))
AS
(
SELECT Databasename,
tablename, 
columnname
from dbc.columns 
where columnname like '%' || :pattern_input || '%';
);





--similarly for a table finder

REPLACE MACRO chess.table_finder (pattern_input VARCHAR(50))
AS
(
SELECT Databasename,
tablename
from dbc.tables 
where tablename like '%' || :pattern_input || '%';
);



EXEC table_finder('game');




--Drop the macros and tables

drop macro table_finder;
drop macro column_finder;
drop macro my_macro;







