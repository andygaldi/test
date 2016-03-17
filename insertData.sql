USE baseballcube;

CREATE TABLE college_batting_2002_2015 (
  playerid mediumint(8) UNSIGNED NOT NULL,
  mlbid mediumint(8) default NULL,
  year year(4) UNSIGNED,
  teamName varchar(255),
  League varchar(255),
  lastName varchar(255),
  firstName varchar(255),
  G smallint(8) UNSIGNED,
  AB smallint(8) UNSIGNED,
  R smallint(8) UNSIGNED,
  H smallint(8) UNSIGNED,
  Dbl smallint(8) UNSIGNED,
  Tpl smallint(8) UNSIGNED,
  HR smallint(8) UNSIGNED,
  RBI smallint(8) UNSIGNED,
  SB smallint(8) UNSIGNED,
  CS smallint(8) UNSIGNED,
  BB smallint(8) UNSIGNED,
  IBB smallint(8) UNSIGNED,
  SO smallint(8) UNSIGNED,
  SH smallint(8) UNSIGNED,
  SF smallint(8) UNSIGNED,
  HBP smallint(8) UNSIGNED,
  GDP smallint(8) UNSIGNED,
  Bavg double(4,3),
  Slg double(4,3),
  obp double(4,3),
  OPS mediumint(8) UNSIGNED,
  Age smallint(8) UNSIGNED,
  HT varchar(255),
  WT smallint(8) UNSIGNED,
  Bats varchar(10),
  Throws varchar(10),
  posit varchar(10),
  borndate varchar(10),
  cityName varchar(255),
  regionID varchar(255),
  PRIMARY KEY (playerid, year)
);

LOAD DATA LOCAL INFILE '/Users/agaldi/Downloads/cubedata/college_batting_2002_2015.csv'
    INTO TABLE college_batting_2002_2015
    FIELDS
        TERMINATED BY ','
        ENCLOSED BY '"'
    LINES
        TERMINATED BY '\r\n'
    IGNORE 1 LINES;