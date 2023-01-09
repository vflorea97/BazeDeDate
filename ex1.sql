
create table masina(
	id integer auto_increment primary key,
    firma varchar(15),
    model varchar(15),
    motor decimal(1,1),
    an integer,
    combustibil varchar(15)
);
-- am creat un tabel cu 6 coloane
-- am creat o cheie primara "id" de tip intiger cu auto-incrementare
-- am creat un atribut de tip string de maximum 15 caractere pentru "firma"
-- am creat un atribut de tip string de maximum 15 caractere pentru "model"
-- am creat un atribut de tip double cu o cifra inainte de virgula,si o cifra dupa virgula
-- am creat un atribut de tip integer reprezentand anul
-- am creat un atribut de tipstring de maximum 15 caractere pentru "combustibil"

SELECT * FROM <table name>;
-- interogare baza de date

SELECT * FROM books; --interogare tabel 'books'
SELECT * FROM products; -- interogare tabel 'products'
SELECT * FROM users; -- interogare tabel 'users'
SELECT * FROM countries; --interogare tabel 'countries'

SELECT <column name> FROM <table name>; -- interogare baza de date, pentru un atribut

SELECT <column name 1>, <column name 2>, ... FROM <table name>; -- interogare baza de date pentru maimulte atribute

SELECT <column name> AS <alias> FROM <table name>; -- se afizeaza alta denumire atributului
SELECT <column name> <alias> FROM <table name>;

SELECT <columns> FROM <table> WHERE <condition>; --interogare baza de data, aplicand o conditie

SELECT <columns> FROM <table> WHERE <column name> = <value>; --interogare baza de date, aplicand o conditie tip comparator

SELECT <columns> FROM <table> WHERE <column name> != <value>;
SELECT <columns> FROM <table> WHERE <column name> <> <value>; --interogarebaza de date, atributul nu este egalcu valoarea data

SELECT <columns> FROM <table> WHERE <column name> < <value>; --mai mic ca
SELECT <columns> FROM <table> WHERE <column name> <= <value>; --mai mic sau egal
SELECT <columns> FROM <table> WHERE <column name> > <value>; --mai mare ca
SELECT <columns> FROM <table> WHERE <column name> >= <value>; --mai mare sau egal

SELECT <columns> FROM <table> WHERE <condition 1> AND <condition 2> ...;
SELECT <columns> FROM <table> WHERE <condition 1> OR <condition 2> ...; --aplicare a doua sau mai multe conditii

SELECT <columns> FROM <table> WHERE <column> IN (<value 1>, <value 2>, ...); --conditie cu mai multe valori

SELECT <columns> FROM <table> WHERE <column> BETWEEN <lesser value> AND <greater value>; --conditie de interval intre doua valori (mai mica si mai mare)

SELECT <columns> FROM <table> WHERE <column> LIKE <pattern>; --returneaza un obiect in functie de modelul definit

SELECT * FROM contacts WHERE first_name ILIKE "%drew"; -- in postgresSql se foloseste "ILIKE"

SELECT * FROM <table> WHERE <column> IS NULL; --returneaza obiectele unde o coloana data este nula

SELECT * FROM <table> WHERE <column> IS NOT NULL; --returneaza obiectele unde o coloana data nu este nula