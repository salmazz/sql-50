# Write your MySQL query statement below
select user_id , count(follower_id) as  followers_count  from followers 
GROUP BY(user_id) 
ORDER BY user_id ASC;
