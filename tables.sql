CREATE TABLE Student (
    Student_ID varchar2(8) PRIMARY KEY NOT NULL,
    F_Name varchar2(20),
    M_Name varchar2(20),
    L_Name varchar2(20)
);

CREATE TABLE Professor (
    Prof_ID varchar2(8) PRIMARY KEY NOT NULL,
    Prof_Name varchar2(25),
    Dept_ID varchar2(10) 
);

CREATE TABLE Assignment (
    Assignment_ID varchar2(8) PRIMARY KEY NOT NULL,
    Assignment_Name varchar2(25)
);
CREATE TABLE Course (
    CRN varchar2(8) PRIMARY KEY NOT NULL,
    Course_ID varchar2(8),  
    Course_Name varchar2(50),
    Dept_ID varchar2(10),   
    Semester varchar2(10),
    Year int,
    Credits int CHECK (Credits > 0), 
    Prof_ID varchar2(8),
    CONSTRAINT fk_Course_Prof FOREIGN KEY (Prof_ID) REFERENCES Professor(Prof_ID)
);
CREATE TABLE Student_Record (
    Record_ID varchar2(8) PRIMARY KEY NOT NULL,
    Student_ID varchar2(8),
    CRN varchar2(8),
    Participation int,
    Quiz_Average int,
    HW_Average int,     
    Test1 int,
    Test2 int,
    Test3 int,
    Test4 int,
    Test5 int,
    FinProj int,        
    Extra_Credit int,
    CONSTRAINT fk_StudentRecord_Student FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    CONSTRAINT fk_StudentRecord_Course FOREIGN KEY (CRN) REFERENCES Course(CRN)
);
CREATE TABLE Enrolled_In (
    Student_ID varchar2(8),
    Course_ID varchar2(8),
    CONSTRAINT pk_Enrolled_In PRIMARY KEY (Student_ID, Course_ID),
    CONSTRAINT fk_Enrolled_In_Student FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    CONSTRAINT fk_Enrolled_In_Course FOREIGN KEY (Course_ID) REFERENCES Course(CRN)
);
CREATE TABLE Assigns ( 
    Assignment_ID varchar2(8),
    Course_ID varchar2(8),
    CONSTRAINT pk_Assigns PRIMARY KEY (Assignment_ID, Course_ID), 
    CONSTRAINT fk_Assigns_Assignment FOREIGN KEY (Assignment_ID) REFERENCES Assignment(Assignment_ID),
    CONSTRAINT fk_Assigns_Course FOREIGN KEY (Course_ID) REFERENCES Course(CRN)
);
CREATE TABLE Grade_Category (
    Category_ID   varchar2(8)  PRIMARY KEY NOT NULL,
    CRN           varchar2(8),
    Category_Name varchar2(25),
    Weight        decimal(5,2),
    CONSTRAINT fk_GradeCat_Course FOREIGN KEY (CRN) REFERENCES Course(CRN)
);