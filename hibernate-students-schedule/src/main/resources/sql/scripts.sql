USE `TEST3`;

CREATE TABLE `PERSON` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` VARCHAR(30) NOT NULL,
  `LAST_NAME` VARCHAR(30) NOT NULL,
  `EMAIL` VARCHAR(60) NOT NULL,
  `PHONE` VARCHAR(20) NOT NULL,
  `BIRTH_DATE` DATE NOT NULL,
  `GENDER` VARCHAR(10) NOT NULL,
  `YEAR` INT DEFAULT NULL,
  `SALARY` DECIMAL DEFAULT NULL,
  `PERSON_TYPE` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `ADDRESS` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(50) NOT NULL,
  `OWNER_ID` INT NOT NULL,
  `STREET` VARCHAR(80) NOT NULL,
  `CITY` VARCHAR(50) NOT NULL,
  `STATE` VARCHAR(2) NOT NULL,
  `ZIP` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`OWNER_ID`) REFERENCES `PERSON` (`ID`)
);
  
CREATE TABLE `COURSE` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `NAME` VARCHAR(50) NOT NULL,
  `LECTURER_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  FOREIGN KEY (`LECTURER_ID`) REFERENCES `PERSON` (`ID`)
);

CREATE TABLE `STUDENT_COURSE` (
  `STUDENT_ID` INT NOT NULL,
  `COURSE_ID` INT NOT NULL,
  `MARK` INT NOT NULL,
  PRIMARY KEY (`STUDENT_ID`, `COURSE_ID`),
  FOREIGN KEY (`STUDENT_ID`) REFERENCES `PERSON` (`ID`),
  FOREIGN KEY (`COURSE_ID`) REFERENCES `COURSE` (`ID`)
);

-------- STUDENTS ----------
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Dale', 'Cooper', 'dcooper@aol.com', '792-223-8901', STR_TO_DATE('1999-01-01', '%Y-%m-%d'), 'M', 1, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Shelly', 'Johnson', 'sjohnson@aol.com', '792-223-6734', STR_TO_DATE('1997-12-12', '%Y-%m-%d'), 'F', 4, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Bobby', 'Briggs', 'bbriggs@aol.com', '792-223-6178', STR_TO_DATE('1997-05-24', '%Y-%m-%d'), 'M', 2, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Donna', 'Hayward', 'dhayward@aol.com', '792-223-2001', STR_TO_DATE('1997-03-24', '%Y-%m-%d'), 'F', 4, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Audrey', 'Horne', 'ahorne@aol.com', '792-223-2001', STR_TO_DATE('1995-02-01', '%Y-%m-%d'), 'F', 1, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('James', 'Hurley', 'jhurley@aol.com', '792-223-1890', STR_TO_DATE('1997-01-02', '%Y-%m-%d'), 'M', 3, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Lucy', 'Moran', 'lmoran@aol.com', '792-223-9678', STR_TO_DATE('1994-11-27', '%Y-%m-%d'), 'F', 5, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Tommy', 'Hill', 'thill@aol.com', '792-223-1115', STR_TO_DATE('2001-12-21', '%Y-%m-%d'), 'M', 4, 'S');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `YEAR`, `PERSON_TYPE`) VALUES ('Andy', 'Brennan', 'abrennan@aol.com', '792-223-8902', STR_TO_DATE('2000-12-27', '%Y-%m-%d'), 'M', 1, 'S');

-------- LECTURERS ----------
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `SALARY`, `PERSON_TYPE`) VALUES ('David', 'Bush', 'dbush@aol.com', '792-221-1890', STR_TO_DATE('1990-01-02', '%Y-%m-%d'), 'M', 3000, 'L');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `SALARY`, `PERSON_TYPE`) VALUES ('Anna', 'Chase', 'ashase@aol.com', '792-221-9678', STR_TO_DATE('1984-11-27', '%Y-%m-%d'), 'F', 5000, 'L');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `SALARY`, `PERSON_TYPE`) VALUES ('Jack', 'House', 'jhouse@aol.com', '792-221-1115', STR_TO_DATE('1991-12-21', '%Y-%m-%d'), 'M', 4000, 'L');
INSERT INTO `PERSON` (`FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE`, `BIRTH_DATE`, `GENDER`, `SALARY`, `PERSON_TYPE`) VALUES ('Michael', 'Bond', 'mbond@aol.com', '792-221-8902', STR_TO_DATE('1980-12-27', '%Y-%m-%d'), 'M', 3700, 'L');

-------- ADDRESSES ----------
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 1, '711-2880 Nulla St.', 'Mankato', 'MS', '22522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 2, '711-2880 Nulla St.', 'Muskegon', 'CA', '96992');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 3, '711-2880 Nulla St.', 'Calista', 'TX', '96522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 4, '711-2880 Nulla St.', 'Lebanon', 'MS', '96332');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 5, '711-2880 Nulla St.', 'New York', 'NY', '96522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 6, '711-2880 Nulla St.', 'Tamuning', 'MS', '99992');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 7, '711-2880 Nulla St.', 'Mankato', 'MS', '26522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 8, '711-2880 Nulla St.', 'Latrobe', 'PH', '96522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 9, '711-2880 Nulla St.', 'Mankato', 'MS', '96522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 10, '711-2880 Nulla St.', 'Idaho Falls', 'ID', '11122');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 11, '711-2880 Nulla St.', 'Bandera', 'UT', '96522');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 12, '711-2880 Nulla St.', 'Mankato', 'MS', '98922');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('HOME', 13, '711-2880 Nulla St.', 'Amesbury', 'MR', '92342');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('WORK', 10, '606-3727 Ullamcorper. Str.', 'Corona', 'NM', '10855');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('WORK', 11, '606-3727 Ullamcorper. Str.', 'Corona', 'NM', '10855');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('WORK', 10, '606-3727 Ullamcorper. Str.', 'Corona', 'NM', '10855');
INSERT INTO `ADDRESS` (`NAME`, `OWNER_ID`, `STREET`, `CITY`, `STATE`, `ZIP`) VALUES ('WORK', 11, '606-3727 Ullamcorper. Str.', 'Corona', 'NM', '10855');

-------- COURCES -----------
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('English', 10);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Speech', 11);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Literature', 12);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Algebra', 13);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Geometry', 10);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Trigonometry', 11);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Calculus', 12);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Earth Science', 13);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Biology', 10);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Chemistry', 11);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('Physics', 12);
INSERT INTO `COURSE` (`NAME`, `LECTURER_ID`) VALUES ('History', 10);

-------- STUDENT_COURSE ---------
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 5, 5);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 7, 6);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 11, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 3, 8);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 6, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 2, 2);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (1, 9, 1);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (3, 1, 8);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (3, 2, 8);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (4, 12, 3);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (5, 1, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (5, 7, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (5, 8, 8);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (5, 10, 10);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (6, 11, 3);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (6, 12, 2);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (7, 1, 4);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (7, 3, 5);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (7, 4, 6);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (8, 12, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (8, 11, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (8, 7, 8);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (8, 5, 8);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (8, 6, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (8, 2, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (9, 1, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (9, 6, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (9, 8, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (9, 2, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (9, 4, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (9, 12, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 1, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 2, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 4, 7);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 8, 4);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 9, 4);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 10, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 12, 9);
INSERT INTO `STUDENT_COURSE` (`STUDENT_ID`, `COURSE_ID`, `MARK`) VALUES (2, 11, 6);
