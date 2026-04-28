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
--assigns (to databases)
INSERT INTO Assigns VALUES ('A0000001', '23491');
INSERT INTO Assigns VALUES ('A0000002', '23491');
INSERT INTO Assigns VALUES ('A0000003', '23491');
INSERT INTO Assigns VALUES ('A0000004', '23491');
INSERT INTO Assigns VALUES ('A0000006', '23491');
--assigns (to game dev)
INSERT INTO Assigns VALUES ('A0000001', '64930');
INSERT INTO Assigns VALUES ('A0000002', '64930');
INSERT INTO Assigns VALUES ('A0000006', '64930');
--assigns (to discrete struc)
INSERT INTO Assigns VALUES ('A0000001', '39285');
INSERT INTO Assigns VALUES ('A0000002', '39285');
INSERT INTO Assigns VALUES ('A0000004', '39285');
INSERT INTO Assigns VALUES ('A0000005', '39285');

-- grade cat
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
>>>>>>> 752400985e30315c36e93eb6db056a410212c515
