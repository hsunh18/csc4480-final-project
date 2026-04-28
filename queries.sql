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