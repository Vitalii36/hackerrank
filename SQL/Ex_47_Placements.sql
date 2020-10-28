/*
You are given three tables: Students, Friends and Packages.
Students contains two columns: ID and Name. Friends contains
two columns: ID and Friend_ID (ID of the ONLY best friend).
Packages contains two columns: ID and Salary (offered salary
in $ thousands per month).
*/

SELECT T1.Name FROM Friends
JOIN Students as T1
USING (ID)
JOIN Packages AS P1
ON Friends.ID = P1.ID
JOIN Students as T2
ON Friends.Friend_ID = T2.ID
JOIN Packages AS P2
ON Friends.Friend_ID = P2.ID
WHERE P1.Salary < P2.Salary
ORDER BY P2.Salary;