/*
Julia just finished conducting a coding contest, and she
needs your help assembling the leaderboard! Write a query
to print the respective hacker_id and name of hackers who
achieved full scores for more than one challenge. Order
your output in descending order by the total number of
challenges in which the hacker earned a full score.
If more than one hacker received full scores in same
number of challenges, then sort them by ascending hacker_id.
*/

SELECT H.Hacker_id, H.Name
FROM Submissions S
INNER JOIN Challenges C
    ON s.challenge_id = c.challenge_id
INNER JOIN Difficulty D
    ON c.difficulty_level = d.difficulty_level
INNER JOIN Hackers H
    ON S.hacker_id = H.hacker_id
WHERE S.score = D.score AND C.difficulty_level = D.difficulty_level
GROUP BY H.hacker_id, H.name
HAVING COUNT(S.hacker_id) > 1
ORDER BY COUNT(S.hacker_id) DESC, S.hacker_id ASC;