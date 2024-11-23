select (select u.name from movierating m left join users u on m.user_id = u.user_id group by m.user_id 
order by count(*) DESC,u.name ASC limit 1) as results
union all
select (select mm.title from movies mm right join movierating m on mm.movie_id = m.movie_id 
where DATE_FORMAT(m.created_at,'%Y-%m') = '2020-02' group by m.movie_id order by avg(m.rating)
DESC,mm.title ASC limit 1) as results;