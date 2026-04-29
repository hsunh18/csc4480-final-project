-- search and retrieve
SELECT c.Course_Name, s.F_Name, s.L_Name 
FROM Student s
JOIN Enrolled_In e ON s.Student_ID = e.Student_ID
JOIN Course c ON e.CRN = c.CRN
WHERE c.CRN = '23491';

-- update
UPDATE Student_Record 
SET FinProj = 100 
WHERE Student_ID = 'RP031006';

-- aggregate
SELECT CRN, AVG(FinProj) as Avg_Project_Score
FROM Student_Record
GROUP BY CRN;

-- safko is behind on grading...
-- Nicole
UPDATE Student_Record SET Test3 = 92 WHERE Record_ID = 'R0000001';
-- Rebecca (struggling)
UPDATE Student_Record SET Test3 = 40 WHERE Record_ID = 'R0000002';
-- Hsun
UPDATE Student_Record SET Test3 = 84 WHERE Record_ID = 'R0000003';


-- "warning report" of who has below a 70 in some category
SELECT s.F_Name, s.L_Name, c.Course_Name, sr.HW_Average, sr.Quiz_Average, sr.Test1, sr.Test2 FROM Student s 
JOIN Student_Record sr ON s.Student_ID = sr.Student_ID JOIN Course c ON sr.CRN = c.CRN
WHERE sr.HW_Average < 70 OR sr.Quiz_Average < 70 OR sr.Test1 < 70 OR sr.Test2 < 70;

