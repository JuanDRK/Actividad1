--Creación de la tabla1--
CREATE TABLE tabla1 (
	A VARCHAR PRIMARY KEY,
	B VARCHAR
);

--Creación de la tabla3--
CREATE TABLE tabla3 (
	C VARCHAR,
	D INTEGER,
	E VARCHAR,
	PRIMARY KEY (C, D)
);

--Creación de la tabla2--
CREATE TABLE tabla2 (
	A VARCHAR,
	C VARCHAR,
	D INTEGER,
	PRIMARY KEY (A, C, D),
	FOREIGN KEY (A) REFERENCES tabla1 (A),
	FOREIGN KEY (C, D) REFERENCES tabla3 (C, D)
);
