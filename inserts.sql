-- students
INSERT INTO Student VALUES ('RP031006', 'Rebecca', 'Therese', 'Post');
INSERT INTO Student VALUES ('NW050506', 'Nicole', 'Katherine', 'Wood');
INSERT INTO Student VALUES ('HH230371', 'Hsun', 'Chih', 'Ho');
INSERT INTO Student VALUES ('MG238095', 'Maria', 'J', 'Garcia');
INSERT INTO Student VALUES ('JK129376', 'James', 'Michael', 'Kim');

-- professors
INSERT INTO Professor VALUES ('GS301942', 'Dr. Gregory Safko');

-- courses
INSERT INTO Course VALUES ('23491', 'CSC4480', 'Database Systems', 'Spring', 2026, 3, 'GS301942');
INSERT INTO Course VALUES ('64930', 'CSC3150', 'Game Development', 'Spring', 2026, 3, 'GS301942');
INSERT INTO Course VALUES ('39285', 'CSC1300', 'Discrete Structures', 'Spring', 2026, 3, 'GS301942');

-- assignments
INSERT INTO Assignment VALUES ('A0000001', 'Participation');
INSERT INTO Assignment VALUES ('A0000002', 'Homework');
INSERT INTO Assignment VALUES ('A0000003', 'Quiz');
INSERT INTO Assignment VALUES ('A0000004', 'Test 1');
INSERT INTO Assignment VALUES ('A0000005', 'Test 2');
INSERT INTO Assignment VALUES ('A0000006', 'Final Project');
INSERT INTO Assignment VALUES ('A0000007', 'Final Exam');
-- assigns (to databases)
INSERT INTO Assigns VALUES ('A0000001', '23491');
INSERT INTO Assigns VALUES ('A0000002', '23491');
INSERT INTO Assigns VALUES ('A0000003', '23491');
INSERT INTO Assigns VALUES ('A0000004', '23491');
INSERT INTO Assigns VALUES ('A0000005', '23491');
INSERT INTO Assigns VALUES ('A0000007', '23491');
-- assigns (to game dev)
INSERT INTO Assigns VALUES ('A0000001', '64930');
INSERT INTO Assigns VALUES ('A0000002', '64930');
INSERT INTO Assigns VALUES ('A0000006', '64930');
-- assigns (to discrete struc)
INSERT INTO Assigns VALUES ('A0000001', '39285');
INSERT INTO Assigns VALUES ('A0000002', '39285');
INSERT INTO Assigns VALUES ('A0000004', '39285');
INSERT INTO Assigns VALUES ('A0000005', '39285');
INSERT INTO Assigns VALUES ('A0000007', '39285');

-- grade category (database systems)
INSERT INTO Grade_Category VALUES ('GC000001', '23491', 'Participation', 10.00);
INSERT INTO Grade_Category VALUES ('GC000002', '23491', 'Homework', 20.00);
INSERT INTO Grade_Category VALUES ('GC000003', '23491', 'Quizzes', 20.00);
INSERT INTO Grade_Category VALUES ('GC000004', '23491', 'Tests', 30.00);
INSERT INTO Grade_Category VALUES ('GC000005', '23491', 'Final Exam', 20.00);
-- grade category (game dev)
INSERT INTO Grade_Category VALUES ('GC000006', '64930', 'Participation', 10.00);
INSERT INTO Grade_Category VALUES ('GC000007', '64930', 'Homework', 30.00);
INSERT INTO Grade_Category VALUES ('GC000008', '64930', 'Final Project', 60.00);
-- grade category (discrete struc)
INSERT INTO Grade_Category VALUES ('GC000009', '39285', 'Participation', 10.00);
INSERT INTO Grade_Category VALUES ('GC000010', '39285', 'Homework', 30.00);
INSERT INTO Grade_Category VALUES ('GC000011', '39285', 'Tests', 40.00);
INSERT INTO Grade_Category VALUES ('GC000012', '39285', 'Final Exam', 20.00);

-- enrolled in (database systems)
INSERT INTO Enrolled_In VALUES ('NW050506', '23491');
INSERT INTO Enrolled_In VALUES ('RP031006', '23491');
INSERT INTO Enrolled_In VALUES ('HH230371', '23491');
-- enrolled in (game dev)
INSERT INTO Enrolled_In VALUES ('HH230371', '64930');
INSERT INTO Enrolled_In VALUES ('MG238095', '64930');
-- enrolled in (discrete struc)
INSERT INTO Enrolled_In VALUES ('JK129376', '39285');

-- student record (database systems)
INSERT INTO Student_Record VALUES ('R0000001', 'NW050506', '23491', 96, 92, 94, 90, 88, NULL, NULL, NULL, NULL, 2);
INSERT INTO Student_Record VALUES ('R0000002', 'RP031006', '23491', 75, 10, 0, 50, 45, NULL, NULL, NULL, NULL, 0);
INSERT INTO Student_Record VALUES ('R0000003', 'HH230371', '23491', 89, 84, 86, 82, 85, NULL, NULL, NULL, NULL, 1);
-- student record (game development)
INSERT INTO Student_Record VALUES ('R0000004', 'HH230371', '64930', 93, NULL, 89, NULL, NULL, NULL, NULL, NULL, 95, 2);
INSERT INTO Student_Record VALUES ('R0000005', 'MG238095', '64930', 97, NULL, 94, NULL, NULL, NULL, NULL, NULL, 98, 1);
-- student record (discrete structures)
INSERT INTO Student_Record VALUES ('R0000006', 'JK129376', '39285', 88, NULL, 91, 84, 86, NULL, NULL, NULL, NULL, 0);

SELECT * FROM Student_Record;
