CREATE DATABASE ajlal;
USE ajlal;

CREATE TABLE data_s (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    age INT
);

INSERT INTO data_s VALUES (1, 'Mohd Ajlal', 19);
INSERT INTO data_s VALUES (2, 'Mohd Anas', 25);
INSERT INTO data_s VALUES (3, 'NEW name', 0);

DESC data_s;

CREATE TABLE data_ss (
    roll INT NOT NULL,
    id INT,
    FOREIGN KEY (id) REFERENCES data_s(id)
);

INSERT INTO data_ss VALUES (19, 1);
INSERT INTO data_ss VALUES (25, 2);
INSERT INTO data_ss VALUES (30, 3);

SELECT * FROM data_ss;

show tables;

desc data_ss;


