-- dept
INSERT INTO Department VALUES ('M2349274', 'Mathematics');
INSERT INTO Department VALUES ('CS542016', 'Computer Science');
INSERT INTO Department VALUES ('FL203819', 'Foreign Languages');
INSERT INTO Department VALUES ('E9205375', 'English');
INSERT INTO Department VALUES ('PS190263', 'Political Science');
INSERT INTO Department VALUES ('H2038437', 'History');
INSERT INTO Department VALUES ('C3946510', 'Communication');
INSERT INTO Department VALUES ('B2319748', 'Biology');
-- students
INSERT INTO Student VALUES ('RP031006', 'Rebecca', 'Therese', 'Post');
INSERT INTO Student VALUES ('NW050506', 'Nicole', 'Katherine', 'Wood');
INSERT INTO Student VALUES ('S0000001', 'Hsun', 'Chih', 'Ho');
INSERT INTO Student VALUES ('S0000002', 'Maria', 'J', 'Garcia');
INSERT INTO Student VALUES ('S0000003', 'James', 'Michael', 'Kim');
-- professors
INSERT INTO Professor VALUES ('P0000001', 'Dr. Alan Reed', 'CS542016');
INSERT INTO Professor VALUES ('P0000002', 'Dr. Susan Lane', 'M2349274');
INSERT INTO Professor VALUES ('P0000003', 'Dr. Mark Ellis', 'CS542016');
-- assignments
INSERT INTO Assignment VALUES ('A0000001', 'Chapter 1 HW');
INSERT INTO Assignment VALUES ('A0000002', 'Midterm Review');
INSERT INTO Assignment VALUES ('A0000003', 'Final Project');
-- courses
INSERT INTO Course VALUES ('10001', 'CSC4480', 'Database Systems', 'CS542016', 'Spring', 2026, 3, 'P0000001');
INSERT INTO Course VALUES ('10002', 'CSC3300', 'Data Structures', 'CS542016', 'Spring', 2026, 3, 'P0000003');
INSERT INTO Course VALUES ('10003', 'MATH2200', 'Discrete Math', 'M2349274', 'Spring', 2026, 3, 'P0000002');
-- grade categories
INSERT INTO Grade_Category VALUES ('GC000001', '10001', 'Participation', 10.00);
INSERT INTO Grade_Category VALUES ('GC000002', '10001', 'HW_Average', 20.00);
INSERT INTO Grade_Category VALUES ('GC000003', '10001', 'Tests', 50.00);
-- student record
INSERT INTO Student_Record VALUES ('R0000001', 'S0000001', '10001', 95, 88, 90, 85, 92, NULL, NULL, NULL, 91, 5);
INSERT INTO Student_Record VALUES ('R0000002', 'S0000002', '10001', 80, 75, 78, 70, 82, NULL, NULL, NULL, 85, 0);
INSERT INTO Student_Record VALUES ('R0000003', 'S0000003', '10001', 70, 65, 72, 68, 74, NULL, NULL, NULL, 78, 3);
INSERT INTO Student_Record VALUES ('R0000004', 'RP031006', '10001', 88, 90, 85, 92, 87, NULL, NULL, NULL, 89, 0);
INSERT INTO Student_Record VALUES ('R0000005', 'NW050506', '10001', 76, 80, 78, 74, 82, NULL, NULL, NULL, 83, 2);
-- enrolled in
INSERT INTO Enrolled_In VALUES ('S0000001', '10001');
INSERT INTO Enrolled_In VALUES ('S0000002', '10001');
INSERT INTO Enrolled_In VALUES ('S0000003', '10002');
INSERT INTO Enrolled_In VALUES ('RP031006', '10001');
INSERT INTO Enrolled_In VALUES ('NW050506', '10001');
-- assigns
INSERT INTO Assigns VALUES ('A0000001', '10001');
INSERT INTO Assigns VALUES ('A0000002', '10001');
INSERT INTO Assigns VALUES ('A0000003', '10002');