--Ex1: 
select distinct city from station
where ID%2=0
--ex2: hackerrank-weather-observation-station-4.sql
select count(city) - count(distinct city) from station
--ex4: datalemur-alibaba-compressed-mean.sql
SELECT ROUND(CAST(SUM(item_count*order_occurrences) /SUM(order_occurrences) AS DECIMAL),1) AS mean FROM items_per_order;
--ex5: datalemur-matching-skills.sql
SELECT candidate_id 
FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) =3;
--ex6: datalemur-verage-post-hiatus-1.sql
SELECT user_id,
Date(MAX(post_date))-date(MIN(post_date)) as day_between
FROM posts
where post_date >='2021-01-01' and post_date <'2022-01-01'
GROUP BY user_id
having count(post_id)>=2
--ex7: datalemur-cards-issued-difference.sql
-- bước 1: phân tích yêu câu
-- 1. gốc/phái sinh
-- 2. input
-- 3. điều kiện lọc theo trường nào (gốc hay phái sinh)
select card_name, 
MAX(issued_amount)-MIN(issued_amount) AS DIFFERENCE
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY DIFFERENCE DESC
--ex8: datalemur-non-profitable-drugs.sql
SELECT manufacturer,
COUNT(DRUG) AS DRUG_COUNT,
ABS(SUM(cogs-total_sales)) AS TOTAL_LOSS
FROM pharmacy_sales
WHERE TOTAL_SALES<COGS
GROUP BY manufacturer
ORDER BY TOTAL_LOSS
--ex9: leetcode-not-boring-movies.sql
select * 
from Cinema
where id%2=1 and description<>'boring'
order by rating Desc
--ex10: leetcode-number-of-unique-subject.sql
select teacher_id,
count(distinct subject_id) as cnt
from Teacher
group by teacher_id
--ex11: leetcode-find-followers-count.sql
select user_id, 
count(follower_id) as followers_count
from followers
group by user_id
order by user_id
--ex12:leetcode-classes-more-than-5-students.sql
select class
from Courses
group by class
having count(student)>=5
