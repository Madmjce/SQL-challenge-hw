--Ex1: hackerrank-more-than-75-marks. 
select name from STUDENTS
where marks>75
order by Right(name,3),ID
--Ex2: leetcode-fix-names-in-a-table.
select user_id, 
concat(upper(left(name,1)), lower(right(name, length(name)-1))) as name
substring(name from 2)
from Users
order by user_id
--ex3: datalemur-total-drugs-sales.
SELECT 
    manufacturer,
    CONCAT('$',ROUND(SUM(total_sales)/1000000),' million') AS total_sales
FROM Pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC , manufacturer;
--ex4: avg-review-ratings.
select 
  extract(month from submit_date) as mth,
  product_id, 
  round(avg(stars),2) as avg_stars
  from reviews
  group by mth, product_id
  order by mth, product_id
--ex5: teams-power-users.
  select 
  sender_id,
  count(message_id) as message_count
  from messages
  where extract(month from sent_date)=8
  and extract(year from sent_date)=2022
  group by sender_id
  order by message_count desc
--ex6: invalid-tweets.
  select tweet_id
  from tweets
  where length(content)>15
--ex7: user-activity-for-the-past-30-days.
--ex8: number-of-hires-during-specific-time-period.
  select
  count(employee_id) as number_employee
  from employees
  where extract(month from joining_date) between 1 and 7
  abd extract(year from joining_date)=2022
--ex9: positions-of-letter-a.
  select
  positiong('a' in first_name) as position
  from worker
  where first_name='Amitah'
--ex10: macedonian-vintages.
select substring(title, length(winery)+2,4)
from winemag_p1
where country='Macedonia'

