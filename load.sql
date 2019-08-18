DROP TABLE instructors;
DROP TABLE lift_operators;
DROP TABLE skier;
DROP TABLE lessons;
DROP TABLE chair_lifts;
DROP TABLE weather;
DROP TABLE forecast;
DROP TABLE take_lesson;
DROP TABLE has_pass;
DROP TABLE lifts_running;
/*
DROP TABLE lesson_on;
*/


CREATE TABLE instructors
(
    IID VARCHAR2(4) PRIMARY KEY,
    F_NAME VARCHAR(50) NOT NULL,
    L_NAME VARCHAR(50) NOT NULL,
    ADDRESS VARCHAR(100) NOT NULL
);

/* Insert 4 instructors */
INSERT INTO instructors VALUES
('1001', 'Peter', 'Rubens', '30 Turner, Queenstown');
INSERT INTO instructors VALUES
('1002', 'Claude', 'Monet', '47 Bank, Christchurch');
INSERT INTO instructors VALUES
('1003', 'Albrecht', 'Durer', '129 Park, Queenstown');
INSERT INTO instructors VALUES
('1004', 'Frida', 'Kahlo', '26 Heriot, Dunedin');



CREATE TABLE lift_operators
(
    LID VARCHAR(4) PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    LNAME VARCHAR(50) NOT NULL,
    HOURS_PER_WEEK double precision NOT NULL,
    ADDRESS VARCHAR(100) NOT NULL
);

/* Insert 4 operators */
INSERT INTO lift_operators VALUES
('2001', 'Moby', 'Dick', 42, '54 Whale, Wellington');
INSERT INTO lift_operators VALUES
('2002', 'Lancelot', 'Lac', 40.0, '18 Duke, Dunedin');
INSERT INTO lift_operators VALUES
('2003', 'Dorian', 'Gray', 36.0, '221 Upton, Wanaka');
INSERT INTO lift_operators VALUES
('2004', 'Oliver', 'Twist', 54.0, '179 York, Queenstown');



CREATE TABLE skier 
(
    PHONE_NUMBER VARCHAR(15) PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    LNAME VARCHAR(50) NOT NULL,
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

/* Insert 4 lessons corresponding to the IIDs (4 instructors) */
INSERT INTO lessons VALUES
('1001', TO_DATE('03-06-2019', 'DD-MM-YYYY'), 'Level 1', 'east peak'); 
INSERT INTO lessons VALUES
('1003', TO_DATE('04-06-2019', 'DD-MM-YYYY'), 'Level 2', 'south peak'); 
INSERT INTO lessons VALUES
('1004', TO_DATE('05-06-2019', 'DD-MM-YYYY'), 'Level 3', 'north peak'); 
INSERT INTO lessons VALUES
('1002', TO_DATE('06-06-2019', 'DD-MM-YYYY'), 'Level 2', 'west peak'); 



CREATE TABLE chair_lifts
(
    START_POINT VARCHAR(30) PRIMARY KEY,
    END_POINT VARCHAR(30),
    LID VARCHAR(4)
);

/* Insert 4 chair lifts */
INSERT INTO chair_lifts VALUES
('carpark 1', 'east peak', '2001');
INSERT INTO chair_lifts VALUES
('carpark 2', 'west peak', '2003');
INSERT INTO chair_lifts VALUES
('carpark 3', 'half east peak', '2002');
INSERT INTO chair_lifts VALUES
('carpark 4', 'half west peak', '2004');



CREATE TABLE weather 
(
    WHEN DATE
);

INSERT INTO weather VALUES
(TO_DATE('03-06-2019', 'DD-MM-YYYY')); 
INSERT INTO weather VALUES
(TO_DATE('04-06-2019', 'DD-MM-YYYY')); 
INSERT INTO weather VALUES
(TO_DATE('05-06-2019', 'DD-MM-YYYY')); 
INSERT INTO weather VALUES
(TO_DATE('06-06-2019', 'DD-MM-YYYY')); 



CREATE TABLE forecast
(
    WHEN DATE,
    FORECAST VARCHAR(30)
);

insert into forecast values
(TO_DATE('03-06-2019', 'DD-MM-YYYY'), 'Snow, No wind, -7C');
insert into forecast values
(TO_DATE('04-06-2019', 'DD-MM-YYYY'), 'Clear, No wind, -3C');
insert into forecast values
(TO_DATE('05-06-2019', 'DD-MM-YYYY'), 'Clear, High Wind, -10C');
insert into forecast values
(TO_DATE('06-06-2019', 'DD-MM-YYYY'), 'Snow, High Wind, -10');



CREATE TABLE take_lesson
(
    PHONE_NUMBER VARCHAR(15),
    IID VARCHAR(4)
);

insert into take_lesson values
(01234567, 1001);
insert into take_lesson values
(05678901, 1002);
insert into take_lesson values
(01436578, 1002);
insert into take_lesson values
(02791412, 1003);
insert into take_lesson values
(05235142, 1003);
insert into take_lesson values
(02341452, 1004);
insert into take_lesson values
(01642342, 1004);



CREATE TABLE has_pass
(
    PHONE_NUMBER VARCHAR(15),
    START_POINT VARCHAR(30)
);

insert into has_pass values
(01234567, 'carpark 1');
insert into has_pass values
(08765432, 'carpark 1');
insert into has_pass values
(05678901, 'carpark 2');
insert into has_pass values
(01436578, 'carpark 2');
insert into has_pass values
(02341451, 'carpark 3');
insert into has_pass values
(02791412, 'carpark 4');
insert into has_pass values
(05235142, 'carpark 4');
insert into has_pass values
(02341452, 'carpark 4');
insert into has_pass values
(02979514, 'carpark 4');
insert into has_pass values
(01642342, 'carpark 4');



CREATE TABLE lifts_running
(
    WHEN DATE,
    START_POINT VARCHAR(30),
    IS_RUNNING CHAR
);

insert into lifts_running values
(TO_DATE('03-06-2019', 'DD-MM-YYYY'), 'carpark 1', '0');

insert into lifts_running values
(TO_DATE('04-06-2019', 'DD-MM-YYYY'), 'carpark 2', '1');

insert into lifts_running values
(TO_DATE('05-06-2019', 'DD-MM-YYYY'), 'carpark 3', '1');

insert into lifts_running values
(TO_DATE('06-06-2019', 'DD-MM-YYYY'),'carpark 4', '0');


/*

CREATE TABLE lesson_on
(
    IID VARCHAR(4),
    START_POINT VARCHAR(30)
);
    
insert into lessons_on values
*/

COMMIT;

