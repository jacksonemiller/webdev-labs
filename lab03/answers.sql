-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT * FROM users
ORDER BY
    last_name ASC,
    first_name ASC,
    id ASC;



-- Exercise 4
SELECT id, user_id, image_url from posts where user_id = 26;



-- Exercise 5
SELECT id, user_id, image_url from posts where user_id = 26 OR user_id = 12; 



-- Exercise 6
SELECT COUNT(*) FROM posts;



-- Exercise 7
select user_id, count(*) from comments group by user_id order by count(*) desc;



-- Exercise 8
select posts.id, posts.user_id, posts.image_url, users.username, users.first_name, users.last_name
from posts
inner join users on posts.user_id = users.id
where posts.user_id = 26 or posts.user_id = 12;



-- Exercise 9
select posts.id, posts.pub_date, following.following_id
from posts
inner join following on posts.user_id = following.following_id
where following.user_id = 26;



-- Exercise 10




-- Exercise 11
insert into bookmarks (user_id, post_id, timestamp) values(26, 219, now());
insert into bookmarks (user_id, post_id, timestamp) values(26, 220, now());
insert into bookmarks (user_id, post_id, timestamp) values(26, 221, now());



-- Exercise 12
delete from bookmarks where post_id = 219 and user_id = 26
delete from bookmarks where post_id = 220 and user_id = 26
delete from bookmarks where post_id = 221 and user_id = 26



-- Exercise 13
update users set email = 'knick2022@gmail.com' where id = 26;



-- Exercise 14
