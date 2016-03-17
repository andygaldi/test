USE baseballcube;

# Create college_batting_2002_2015 schema
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
  Bavg float,
  Slg float,
  obp float,
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

# Load data into college_batting_1965_2001 table
# Some preprocessing steps
## Find and replace ,, with ,NULL, in .csv
LOAD DATA LOCAL INFILE '/Users/agaldi/Downloads/cubedata/college_batting_2002_2015.csv'
    INTO TABLE college_batting_2002_2015
    FIELDS
        TERMINATED BY ','
        ENCLOSED BY ''
    LINES
        TERMINATED BY '\r\n'
    IGNORE 1 LINES;

# Create college_batting_1965_2001 schema
CREATE TABLE college_batting_1965_2001 (
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
  Bavg float,
  Slg float,
  obp float,
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

# Load data into college_batting_1965_2001 table
# Some preprocessing steps
## Find and replace ,, with ,NULL, in .csv
## Remove lines that start with 0 (i.e. plauerid is 0). This avoids most 
##   duplicate key errors 
## sed '/^0/ d' < college_batting_1965_2001.csv > college_batting_1965_2001_input.csv
LOAD DATA LOCAL INFILE '/Users/agaldi/Downloads/cubedata/college_batting_1965_2001_input.csv'
    INTO TABLE college_batting_1965_2001
    FIELDS
        TERMINATED BY ','
        ENCLOSED BY ''
    LINES
        TERMINATED BY '\r\n'
    IGNORE 1 LINES;

# Create college_pitching_2002_2015 schema
CREATE TABLE college_pitching_2002_2015 (
  playerid mediumint(8) UNSIGNED NOT NULL,
  mlbid mediumint(8) default NULL,
  year year(4) UNSIGNED,
  teamName varchar(255),
  League varchar(255),
  lastName varchar(255),
  firstName varchar(255),
  W smallint(8) UNSIGNED,
  L smallint(8) UNSIGNED,
  G smallint(8) UNSIGNED,
  GS smallint(8) UNSIGNED,
  CG smallint(8) UNSIGNED,
  SHO smallint(8) UNSIGNED,
  GF smallint(8) UNSIGNED,
  SV smallint(8) UNSIGNED,
  IP double(4,1),
  H smallint(8) UNSIGNED,
  HR smallint(8) UNSIGNED,
  R smallint(8) UNSIGNED,
  ER smallint(8) UNSIGNED,
  BB smallint(8) UNSIGNED,
  IBB smallint(8) UNSIGNED,
  SO smallint(8) UNSIGNED,
  WP smallint(8) UNSIGNED,
  BK smallint(8) UNSIGNED,
  ERA float,
  h9 float,
  hr9 float,
  bb9 float,
  so9 float,
  WHIP float,
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

# Load data into college_pitching_2002_2015 table
# Some preprocessing steps
## 1. Find and replace ,, with ,NULL, in .csv
##    Repeat this command as needed:
##    sed 's/,,/,NULL,/g' < college_pitching_2002_2015.csv > college_pitching_2002_2015_input.csv
LOAD DATA LOCAL INFILE '/Users/agaldi/Downloads/cubedata/college_pitching_2002_2015_input.csv'
    INTO TABLE college_pitching_2002_2015
    FIELDS
        TERMINATED BY ','
        ENCLOSED BY ''
    LINES
        TERMINATED BY '\r\n'
    IGNORE 1 LINES;

# Create college_pitching_1965_2001 schema
CREATE TABLE college_pitching_1965_2001 (
  playerid mediumint(8) UNSIGNED NOT NULL,
  mlbid mediumint(8) default NULL,
  year year(4) UNSIGNED,
  teamName varchar(255),
  League varchar(255),
  lastName varchar(255),
  firstName varchar(255),
  W smallint(8) UNSIGNED,
  L smallint(8) UNSIGNED,
  G smallint(8) UNSIGNED,
  GS smallint(8) UNSIGNED,
  CG smallint(8) UNSIGNED,
  SHO smallint(8) UNSIGNED,
  GF smallint(8) UNSIGNED,
  SV smallint(8) UNSIGNED,
  IP double(4,1),
  H smallint(8) UNSIGNED,
  HR smallint(8) UNSIGNED,
  R smallint(8) UNSIGNED,
  ER smallint(8) UNSIGNED,
  BB smallint(8) UNSIGNED,
  IBB smallint(8) UNSIGNED,
  SO smallint(8) UNSIGNED,
  WP smallint(8) UNSIGNED,
  BK smallint(8) UNSIGNED,
  ERA float,
  h9 float,
  hr9 float,
  bb9 float,
  so9 float,
  WHIP float,
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

# Load data into college_pitching_1965_2001 table
# Some preprocessing steps
## 1. Find and replace ,, with ,NULL, in .csv
##       sed 's/,,/,NULL,/g' < college_pitching_1965_2001.csv > college_pitching_1965_2001_input.csv
##    Repeat this command as needed:
##      sed -i '' 's/,,/,NULL,/g' college_pitching_1965_2001_input.csv
## 2. Remove lines that start with 0 (i.e. plauerid is 0). This avoids most 
##    duplicate key errors 
##      sed -i '' '/^0/ d' college_pitching_1965_2001_input.csv
LOAD DATA LOCAL INFILE '/Users/agaldi/Downloads/cubedata/college_pitching_1965_2001_input.csv'
    INTO TABLE college_pitching_1965_2001
    FIELDS
        TERMINATED BY ','
        ENCLOSED BY ''
    LINES
        TERMINATED BY '\r\n'
    IGNORE 1 LINES;

# Create draft_register schema
CREATE TABLE draft_register (
  year year(4) UNSIGNED,
  phase varchar(255),
  draftRound smallint(8) UNSIGNED,
  overall smallint(8) UNSIGNED,
  Teamname varchar(255),
  firstName varchar(255),
  lastName varchar(255),
  posit varchar(10),
  highLevel varchar(10),
  hsName varchar(255),
  hsplace varchar(255),
  collegename varchar(255),
  borndate varchar(10),
  HT varchar(255),
  WT smallint(8) UNSIGNED,
  Bats varchar(10),
  Throws varchar(10),
  region varchar(2),
  PlayerID mediumint(8),
  bonus mediumint(8),
  Source varchar(2),
  Signed varchar(1),
  Status varchar(255),
  currentTeamname varchar(255),
  mlbID mediumint(8) UNSIGNED,
  tbcID mediumint(8) UNSIGNED,
  PlayerName varchar(255),
  mlbID2 mediumint(8) UNSIGNED,
  PRIMARY KEY(year, phase, overall)
);

# Load data into draft_register table
# Some preprocessing steps
## 1. Find and replace ,, with ,NULL, in .csv
##      sed 's/,,/,NULL,/g' < draft_register.csv > draft_register_input.csv
##    Repeat this command as needed:
##      sed -i '' 's/,,/,NULL,/g' draft_register_input.csv
##      Find and Replace rows that end with , with ,NULL 
LOAD DATA LOCAL INFILE '/Users/agaldi/Downloads/cubedata/draft_register_input.csv'
    INTO TABLE draft_register
    FIELDS
        TERMINATED BY ','
        ENCLOSED BY ''
    LINES
        TERMINATED BY '\r\n'
    IGNORE 1 LINES;
