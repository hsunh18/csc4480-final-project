CREATE TABLE Student (
    Student_ID varchar2(8) PRIMARY KEY NOT NULL,
    F_Name varchar2(20),
    M_Name varchar2(20),
    L_Name varchar2(20)
);

CREATE TABLE Course (
    CRN varchar2(8) PRIMARY KEY NOT NULL,
    Prof_ID varchar2(8), -- FOREIGN KEY REF
    Course_Name varchar2(15),
    Semester varchar2(10),
    Year int,
    Credits int, -- MUST BE > 0
    Dept_ID varchar2(8) -- FK REF
);