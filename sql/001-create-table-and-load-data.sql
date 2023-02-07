DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id int unsigned AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  director VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO movies (name, director) VALUES ("ショーシャンクの空に", "フランク・ダラボン");
INSERT INTO movies (name, director) VALUES ("この世界の片隅に", "片渕須直");

CREATE TABLE IF NOT EXISTS councilors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20),
    commitee VARCHAR(15),
    imagepath VARCHAR(30),
    address VARCHAR(20),
    tel_num VARCHAR(30),
    birthday DATETIME,
    homepage VARCHAR(50),
    created_at DATETIME
);

LOAD DATA INFILE "/docker-entrypoint-initdb.d/002-councilors.csv" INTO TABLE councilors FIELDS TERMINATED BY ',';
