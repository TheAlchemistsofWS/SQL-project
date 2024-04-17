--1. Вывести location_name из таблицы airbnb.location
select location_name
from airbnb.location;

--2. Вывести все города встречающиеся в таблице
select distinct country_name
from airbnb.country;

--3. Вывести user_id, у которых дата прибытия после 2023-10-10
select user_id
from airbnb.booking
where checkin_date > '2023-10-10';

--4. Вывести property_id, checkin_date, checkout_date на те номера, у которых total_price > 700
select property_id, checkin_date, checkout_date
from airbnb.booking
where total_price > 700;

--5. Вывести те строчки таблицы airbnb.user_review, comment которых содержит либо слово like, либо Fantastic, либо great
select *
from airbnb.user_review
where comment similar to '%(like|great|Fantastic)%';

--6. Минимальный рейтинг
select min(rating) as min_rating
from airbnb.user_review;

--7. Количество отзывов с рейтингом 5
select sum(rating) / 5 as ans
from airbnb.user_review
where rating = 5;

--8. Количество отзывов с рейтингом 5
select count(*) as ans
from airbnb.user_review
where rating = 5;

--9. Слова излишни
select id, property_id, rating, review_date
from airbnb.user_review
group by id
having rating > 3 and review_date >= '2022-01-01'
order by rating;

--10. Выводим самый первый положительный отзыв
select *
from airbnb.user_review
where rating > 3
order by review_date
limit 1;

--11. Выводим самый последний положительный отзыв
select *
from airbnb.user_review
where rating > 3
order by review_date desc
limit 1;

--12. Изменить рейтинг на 1 у указанного пользователя
update airbnb.user_review
set rating = 1
where user_id = 18;

--13. Изменить пароли некоторых пользователей (в зависимости от их имени)
update airbnb.user_account
set password = case
    when first_name = 'Dan' then 'ILoveRussian'
    when first_name = 'Alice' then 'MakeMath'
    when first_name = 'Charlie' then '123456'
    when first_name = 'David' then 'LifeIsGood'
    when first_name = 'Emma' then 'BehindBlueEyes'
    else password
end
where first_name in (select first_name from airbnb.user_account);

--14. Изменить фамилию пользователя
update airbnb.user_account
set last_name = 'Jordan'
where first_name = 'Dan';

--15. Изменить почту по имени и фамилии пользователя
update airbnb.user_account
set email = 'jordan@example.com'
where first_name = 'Dan' and last_name = 'Jordan';

--16. Посмотреть длину отзывов у положительных рейтингов
select user_id, rating, length(comment) as len
from airbnb.user_review
where rating > 4;

--17. Вывести тип гостей, которых выбрали два раза внутри одного заказа
select guests
from airbnb.booking_guests
where num_guests = 2;

--18. Вывести тип гостей, которых выбрали два раза внутри одного заказа, и сгруппировать их
select guests
from airbnb.booking_guests
where num_guests = 2
group by guests;

--19. Среди каждого типа сколько было выбрано максимальное количество этого типа внутри одного заказа
select guests, max(num_guests) as maximum
from airbnb.booking_guests
group by guests;

--20.
select property_id, max(checkout_date - checkin_date)
from airbnb.booking
group by property_id;

--21. Отсортировать по дате выезда в обратном порядке
SELECT *
FROM airbnb.booking
ORDER BY checkout_date DESC;

--22. Вывести юзеров, у которых суммарная стоимость аренды больше 500
SELECT user_id, SUM(total_price) AS total_order_amount
FROM airbnb.booking
GROUP BY user_id, total_price
HAVING total_price > 1000;

--23 Соединить airbnb.booking и airbnb.booking_guests по id
select id, nightly_price, total_price
from airbnb.booking b
Join airbnb.booking_guests bg ON b.id = bg.booking_id;

--24. Сделать левый джоин с условием, что id < 10
select id, nightly_price, total_price
from airbnb.booking b
left outer join airbnb.booking_guests bg ON b.id = bg.booking_id
where b.id < 10;

--25. Сделать полный джоин с уловием
select id, nightly_price, total_price
from airbnb.booking b
full outer join airbnb.booking_guests bg ON b.id = bg.booking_id
where b.id < 5 and bg.booking_id < 4;

