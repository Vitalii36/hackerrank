/*
Julia asked her students to create some coding challenges.
Write a query to print the hacker_id, name, and the total
number of challenges created by each student. Sort your
results by the total number of challenges in descending order.
If more than one student created the same number of challenges,
then sort the result by hacker_id. If more than one student
created the same number of challenges and the count is less
than the maximum number of challenges created, then exclude
those students from the result.
*/

select a.hacker_id, a.name, count(b.hacker_id)
from Hackers a, Challenges b
WHERE a.hacker_id = b.hacker_id
GROUP BY a.hacker_id,a.name
HAVING count(b.hacker_id) not in
    (select  distinct count(hacker_id) from Challenges
    WHERE hacker_id <> a.hacker_id
    group by hacker_id
    having count(hacker_id) < (select max(x.challenge_count)
        from (select count(b.challenge_id) as challenge_count
            from Challenges b GROUP BY b.hacker_id) as x ))
ORDER BY count(b.hacker_id) desc, a.hacker_id;