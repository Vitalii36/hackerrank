/*
You did such a great job helping Julia with her last coding
 contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores
for all of the challenges. Write a query to print the hacker_id,
name, and total score of the hackers ordered by the descending
score. If more than one hacker achieved the same total score,
then sort the result by ascending hacker_id. Exclude all
hackers with a total score of  from your result.
*/

SELECT TC.hacker_id, Hackers.name, SUM(TC.ms) AS ss FROM (SELECT hacker_id, challenge_id, MAX(score) as ms
               FROM Submissions S
               GROUP BY hacker_id, challenge_id) AS TC
JOIN Hackers
USING (hacker_id)
GROUP BY TC.hacker_id, Hackers.name
HAVING ss <> 0
ORDER BY ss DESC, TC.hacker_id;