--1.  Это представление поможет скрыть пароль и почту
create view user_v as
    select id, first_name, last_name from airbnb.user_account;

--2. Скрываем теперь только пароль
create view user_vv as
    select id, first_name, last_name, email from airbnb.user_account;

--3. Это представление отображает только дорогую недвижимость
create view HighlyPrice_v as
    select id, property_id, total_price
    from airbnb.booking
    where total_price > 500;

--4. Показываем только недавние хорошие рейтинги
create view CurrentBiggerThan3_v as
    select id, property_id, rating, review_date
    from airbnb.user_review
    group by id
    having rating > 3 and review_date >= '2022-01-01'
    order by rating;

--5. Текущие прибытие
create view CurrentVisit_v as
    select user_id
    from airbnb.booking
    where checkin_date > '2023-10-10';

--6.
create view Guests as
    select guests
    from airbnb.booking_guests
    where num_guests = 2
    group by guests;

--7.
CREATE VIEW CountryLocation_v AS
    SELECT c.id, c.region, c.country_name, l.location_name
    FROM airbnb.country c
    LEFT OUTER JOIN airbnb.location l ON c.id = l.country_id;

--8.
CREATE VIEW UserComponentReview AS
    SELECT u.id, u.rating, u.comment, u.review_date, c.rating AS component_rating
    FROM airbnb.user_review u
    LEFT OUTER JOIN airbnb.component_rating c ON u.id = c.review_id;










