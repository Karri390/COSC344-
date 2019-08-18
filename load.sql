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

/* Insert 4 instructors */
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


/* Insert 4 operators */
INSERT INTO lift_operators VALUES
('2001', 'Moby', 'Dick', '42.0', '54 Whale, Wellington');
INSERT INTO lift_operators VALUES
('2002', 'Lancelot', 'Lac', '40.0', '18 Duke, Dunedin');
INSERT INTO lift_operators VALUES
('2003', 'Dorian', 'Gray', '36.0', '221 Upton, Wanaka');
INSERT INTO lift_operators VALUES
('2004', 'Olive', 'Twist', '54.0', '179 York, Queenstown');


CREATE TABLE skier 
(
    PHONE_NUMBER VARCHAR(15) PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    FNAME VARCHAR(50) NOT NULL,
    EXPERIENCE_LEVEL VARCHAR(20) NOT NULL,
    IID VARCHAR2(4)
);

/* Insert 10 skiers */
INSERT INTO skier VALUES
('01234567', 'James', 'Joyce', 'Advanced', '1002');
INSERT INTO skier VALUES
('08765432', 'William', 'Yeats', 'Intermediate', '1004');
INSERT INTO skier VALUES
('05678901', 'Jane', 'Austen', 'Beginner', '1001');
INSERT INTO skier VALUES
('01436578', 'Oscar', 'Wilde', 'Intermediate', '1002');
INSERT INTO skier VALUES
('02341451', 'David', 'Lawrence', 'Beginner', '1003');
INSERT INTO skier VALUES
('02791412', 'William', 'Blake', 'Advanced', '1002');
INSERT INTO skier VALUES
('05235142', 'Angela', 'Carter', 'Advanced', '1004');
INSERT INTO skier VALUES
('02341452', 'George', 'Orwell', 'Beginner', '1003');
INSERT INTO skier VALUES
('02979514', 'Charles', 'Dickens', 'Intermediate', '1001');
INSERT INTO skier VALUES
('01642342', 'George', 'Eliot', 'Advanced', '1004');


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
    WHEN DATE
);

CREATE TABLE forecast
(
    WHEN DATE,
    FORECAST VARCHAR(30)
);

CREATE TABLE take_lesson
(
    PHONE_NUMBER VARCHAR(15),
    IID VARCHAR(4)
);

CREATE TABLE has_pass
(
    PHONE_NUMBER VARCHAR(15,
    START_POINT VARCHAR(30)
);

CREATE TABLE lift_running
(
    WHEN DATE,
    START_POINT VARCHAR(30),
    IS_RUNNING CHAR
);

CREATE TABLE lesson_on
(
    IID VARCHAR(4),
    START_POINT VARCHAR(30)
);
    


COMMIT;

