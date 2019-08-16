DROP TABLE instructors;
DROP TABLE lift_operators;
DROP TABLE skier;
DROP TABLE lessons;
DROP TABLE chair_lifts;
DROP TABLE weather;

CREATE TABLE instructors
(
    IID VARCHAR2(4) PRIMARY KEY,
    F_NAME VARCHAR(50) NOT NULL,
    L_NAME VARCHAR(50) NOT NULL,
    LESSONS_PER_WEEK INT(20) NOT NULL,
    ADDRESS VARCHAR(100) NOT NULL
);

INSERT INTO instructors VALUES
('1001', 'Peter', 'Rubens', '6', '30 Turner, Queenstown');
INSERT INTO instructors VALUES
('1002', 'Claude', 'Monet', '12', '47 Bank, Christchurch');
INSERT INTO instructors VALUES
('1003', 'Albrecht', 'Durer', '10', '129 Park, Queenstown');
INSERT INTO instructors VALUES
('1004', 'Frida', 'Kahlo', '9', '26 Heriot, Dunedin');


CREATE TABLE lift_operators
(
    LID VARCHAR(4) PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    LNAME VARCHAR(50) NOT NULL,
    HOURS_PER_WEEK float(3,3) NOT NULL,
    ADDRESS VARCHAR(100) NOT NULL
);

INSERT INTO lift_operators VALUES
('2001', 'Moby', 'Dick', '42', '54 Whale, Wellington');


CREATE TABLE skier 
(
    PHONE_NUMBER VARCHAR(15) PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    FNAME VARCHAR(50) NOT NULL,
    EXPERIENCE_LEVEL VARCHAR(20) NOT NULL,
    IID VARCHAR2(4)
);

INSERT INTO skier VALUES
('01234567', 'James', 'Joyce', 'Beginner', '1002');

CREATE TABLE lessons
(
   IID VARCHAR(4) PRIMARY KEY,
   DATE_OF_LESSON date,
   DIFFICULTY_LEVEL VARCHAR(20),
   LOCATION VARCHAR(30)
);

CREATE TABLE chair_lifts
(
    START_POINT VARCHAR(30) PRIMARY KEY,
    END_POINT VARCHAR(30),
    LID VARCHAR(4)
);

CREATE TABLE weather 
(
  WHEN DATE,
);


COMMIT;

