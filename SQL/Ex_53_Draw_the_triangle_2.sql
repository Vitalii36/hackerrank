/*
P(R) represents a pattern drawn by Julia in R rows. The following pattern represents P(5):

*
* *
* * *
* * * *
* * * * *
Write a query to print the pattern P(20).
*/

set @number = 0;
select Case
WHEN @number < 20 THEN repeat('* ', @number := @number + 1) ELSE '' END from information_schema.tables;