DROP DATABASE IF EXISTS UNI;
GO
CREATE DATABASE UNI;
GO

USE UNI;
GO

CREATE TABLE DEPARTMENT(
  ID INT NOT NULL IDENTITY,
  NAME VARCHAR(255) NOT NULL,
  IS_MINOR BIT DEFAULT 0,
  PRIMARY KEY(ID)
);
GO

CREATE TABLE PROFESSOR_POSITION(
  ID INT NOT NULL IDENTITY,
  NAME VARCHAR(255) NOT NULL,
  PRIMARY KEY(ID)
);
GO

CREATE TABLE PROFESSOR(
  ID INT NOT NULL IDENTITY,
  FIRSTNAME VARCHAR(255) NOT NULL,
  LASTNAME VARCHAR(255) NOT NULL,
  POSITION_ID INT NOT NULL FOREIGN KEY REFERENCES PROFESSOR_POSITION(ID),
  PRIMARY KEY (ID)
);
GO

CREATE TABLE STUDENT(
  ID INT NOT NULL IDENTITY,
  FIRSTNAME VARCHAR(255) NOT NULL,
  LASTNAME VARCHAR(255) NOT NULL,
  GPA FLOAT NOT NULL DEFAULT 0.0,
  PRIMARY KEY (ID)
);
GO

-- many to many relationship between students and departments
CREATE TABLE STUDENT_DEPARTMENT(
  STUDENT_ID  INT NOT NULL FOREIGN KEY REFERENCES STUDENT(ID),
  DEPARTMENT_ID  INT NOT NULL FOREIGN KEY REFERENCES DEPARTMENT(ID)
);
GO


CREATE TABLE COURSE(
  ID INT NOT NULL IDENTITY,
  CODE VARCHAR(255) NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  DEPARTMENT_ID INT NOT NULL FOREIGN KEY REFERENCES DEPARTMENT(ID),
  IS_ELECTIVE BIT DEFAULT 0,
  PRIMARY KEY (ID)
);
GO

CREATE TABLE COURSE_DEPENDENCY(
  COURSE_ID  INT NOT NULL FOREIGN KEY REFERENCES COURSE(ID),
  DEPENDENT_COURSE_ID  INT NOT NULL FOREIGN KEY REFERENCES COURSE(ID)
);
GO

-- many to many relationship between students and courses
CREATE TABLE STUDENT_COURSES(
  STUDENT_ID  INT NOT NULL FOREIGN KEY REFERENCES STUDENT(ID),
  COURSE_ID INT NOT NULL FOREIGN KEY REFERENCES COURSE(ID)
);
GO

CREATE TABLE LECTURE_HALL(
  ID INT NOT NULL IDENTITY,
  NAME VARCHAR(255),
  CAPACITY INT NOT NULL, 
  PRIMARY KEY (ID)
);
GO

CREATE TABLE TIMESLOT(
  ID INT NOT NULL IDENTITY,
  FROM_HOUR INT NOT NULL,
  FROM_MINUTE INT NOT NULL,
  TO_HOUR INT NOT NULL,
  TO_MINUTE INT NOT NULL,
  DAY_OF_WEEK INT NOT NULL,
  IS_ACTIVE BIT,
  PRIMARY KEY (ID)
);
GO

CREATE TABLE SCHEDULE(
  ID INT NOT NULL IDENTITY,
  PROFESSOR_ID INT NOT NULL FOREIGN KEY REFERENCES PROFESSOR(ID),
  COURSE_ID  INT NOT NULL FOREIGN KEY REFERENCES COURSE(ID),
  TIMESLOT_ID  INT NOT NULL FOREIGN KEY REFERENCES TIMESLOT(ID),
  LECTURL_HALL_ID INT NOT NULL FOREIGN KEY REFERENCES LECTURE_HALL(ID),
  PRIMARY KEY (ID)
);
GO
