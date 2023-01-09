UPDATE <table> SET <column> = <value>; --se updateaza o anumita coloana

UPDATE <table> SET <column 1> = <value 1>, <column 2> = <value 2>; -- se updateaza doua sau mai multe coloane

UPDATE <table> SET <column> = <value> WHERE <condition>; --se updateaza o coloana, cu o conditie data

UPDATE <table> SET <column 1> = <value 1>, <column 2> = <value 2> WHERE <condition>; --se updateaza doua sau mai multe coloane, cu o conditie data

DELETE FROM <table>; --sterge toate randurile(obiectele) din tabel

DELETE FROM <table> WHERE <condition>; --sterge un anumit rand/randuri, in functie de conditie

BEGIN TRANSACTION;