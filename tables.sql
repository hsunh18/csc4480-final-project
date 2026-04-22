CREATE TABLE Student (
    Student_ID varchar2(8) PRIMARY KEY NOT NULL,
    F_Name varchar2(20),
    M_Name varchar2(20),
    L_Name varchar2(20)
);
CREATE TABLE Professor (
    Prof_ID varchar2(8) PRIMARY KEY NOT NULL,
    Prof_Name varchar2(25),
    Dept_ID varchar2(8), 
    FOREIGN KEY REFERENCES Department(Dept_ID)
);

CREATE TABLE Course (
    CRN varchar2(8) PRIMARY KEY NOT NULL,
    Prof_ID varchar2(8),
    FOREIGN KEY REFERENCES Professor(Prof_ID),
    Course_Name varchar2(15),
    Semester varchar2(10),
    Year int,
    Credits int, -- MUST BE > 0
    Dept_ID varchar2(8),
    FOREIGN KEY REFERENCES Department(Dept_ID)
);
CREATE Table Assignment (
    Assignment_ID varchar2(8) PRIMARY KEY NOT NULL,
    Assignment_Name varchar2(25)
);

CREATE TABLE Student_Record (
    Record_ID varchar2(8) PRIMARY KEY NOT NULL,
    Student_ID varchar2(8),
    FOREIGN KEY REFERENCES Student(Student_ID),
    CRN varchar2(8),
    FOREIGN KEY REFERENCES Course(CRN),
    Participation int,
    Test1 int,
    Test2 int,
    Final_Proj int, 
    Final_Exam int,
    Extra_Credit int
);
CREATE TABLE Enrolled_In (
    Student_ID varchar2(8),
    Foreign KEY REFERENCES Student(Student_ID),
    Course_ID varchar2(8),
    FOREIGN KEY REFERENCES Course(CRN)
);
CREATE TABLE Enrolled_In ( --spine table
    Student_ID varchar2(8),
    CONSTRAINT fk_Enrolled_In_Student FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    Course_ID varchar2(8),
    CONSTRAINT fk_Enrolled_In_Course FOREIGN KEY (Course_ID) REFERENCES Course(CRN),
    CONSTRAINT pk_Enrolled_In PRIMARY KEY (Student_ID, Course_ID)
);