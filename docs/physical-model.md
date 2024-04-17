### Физическая модель

---
Таблица `property:`

| Название      | Описание                                            | Тип данных | Ограничение |
|---------------|-----------------------------------------------------|------------|------------|
| `id`            | Идентификатор                                       | `INTEGER`  | `PRIMARY KEY` |
| `location_id`   | Идентификатор                                       | `INTEGER`  | `FOREIGN KEY` |
| `host_id`       | Идентификатор арендодателя                          | `INTEGER`  | `FOREIGN KEY` |
| `nightly_price` | Цена за одну ночь                                   | `INTEGER`  | `NOT NULL` |
| `property_name` | Название недвижимости                               | `VARCHAR`  | `NOT NULL` |
| `num_guests`    | Максимальное количество людей для этой недвижимости | `INTEGER`  | `NOT NULL` |
| `num_bedrooms`  | Количество спальных мест                            | `INTEGER`  | `NOT NULL` |
| `description`   | Описание недвижимости                               | `VARCHAR`  | `NOT NULL` |

Таблица `location:`

| Название        | Описание      | Тип данных | Ограничение   |
|-----------------|---------------|------------|---------------|
| `id`            | Идентификатор | `INTEGER`  | `PRIMARY KEY` |
| `country_id`    | Идентификатор | `INTEGER`  | `FOREIGN KEY` |
| `location_name` | Место         | `VARCHAR`  | `NOT NULL`    |

Таблица `country:`

| Название       | Описание           | Тип данных | Ограничение   |
|----------------|--------------------|---------------|---------------|
| `id`           | Идентификатор      | `INTEGER`  | `PRIMARY KEY` |
| `region`       | Название региона   | `VARCHAR`  | `FOREIGN KEY` |
| `country_name` | Страна             | `VARCHAR`| `NOT NULL`    |

Таблица `user_account:`

| Название            | Описание                 | Тип данных | Ограничение |
|---------------------|--------------------------|------------|------------|
| `id`                | Идентификатор            | `INTEGER`  | `PRIMARY KEY` |
| `first_name`        | Имя                      | `VARCHAR`  | `FOREIGN KEY` |
| `last_name`         | Фамилия                  | `VARCHAR`  | `FOREIGN KEY` |
| `email`             | Почта                    | `VARCHAR`  | `NOT NULL` |
| `password`          | Пароль                   | `VARCHAR`  | `NOT NULL` |
| `joined_date`       | Дата регистрации         | `DATE`     | `NOT NULL` |

Таблица `user_review:`

| Название      | Описание                                        | Тип данных | Ограничение |
|---------------|-------------------------------------------------|------------|------------|
| `id`          | Идентификатор                                   | `INTEGER`  | `PRIMARY KEY` |
| `property_id` | Идентификатор недвижимости                      | `INTEGER`  | `FOREIGN KEY` |
| `user_id`     | Идентификатор пользователя                      | `INTEGER`  | `FOREIGN KEY` |
| `rating`      | Общая оценка недвижимости от этого пользователя | `INTEGER`  | `NOT NULL` |
| `comment`     | Комментарий                                     | `VARCHAR`  | `NOT NULL` |
| `review_date` | Когда был написан отзыв                         | `DATE`     | `NOT NULL` |

Таблица `component_rating:`

| Название       | Описание             | Тип данных | Ограничение   |
|----------------|----------------------|------------|---------------|
| `component_id` | Идентификатор        | `INTEGER`  | `PRIMARY KEY` |
| `review_id`    | Идентификатор отзыва | `INTEGER`  | `FOREIGN KEY` |
| `rating`       | Рейтинг              | `INTEGER`  | `NOT NULL`    |

Таблица `booking:`

| Название         | Описание                         | Тип данных | Ограничение   |
|------------------|----------------------------------|------------|---------------|
| `id`             | Идентификатор                    | `INTEGER`  | `PRIMARY KEY` |
| `property_id`    | Идентификатор недвижимости       | `INTEGER`  | `FOREIGN KEY` |
| `user_id`        | Идентификатор пользователя       | `INTEGER`  | `FOREIGN KEY` |
| `booking_status` | Статус бронирования              | `INTEGER`  | `FOREIGN KEY` |
| `checkin_date`   | Дата заселения                   | `DATE`     | `NOT NULL`    |
| `checkout_date`  | Дата выселения                   | `DATE`     | `NOT NULL`    |
| `nightly_price`  | Цена за одну ночь                | `INTEGER`  | `NOT NULL`    |
| `cleaning_fee`   | Плата за уборку при бронировании | `INTEGER`  | `NOT NULL`    |
| `total_price`    | Общая стоимость                  | `INTEGER`  | `NOT NULL`    |

Таблица `booking_guests:`

| Название      | Описание          | Тип данных | Ограничение   |
|---------------|-------------------|------------|---------------|
| `booking_id`  | Идентификатор     | `INTEGER`  | `FOREIGN KEY` |
| `guests`      | Тип гостей        | `VARCHAR`  | `NOT NULL`    |
| `num_guests`  | Количсетво гостей | `INTEGER`  | `NOT NULL`    |

Здесь PK создастся автоматически, либо можно сделать по `booking_id` и `guests`

Таблица `booking_status:`

| Название      | Описание      | Тип данных | Ограничение   |
|---------------|---------------|------------|---------------|
| `id`          | Идентификатор | `INTEGER`  | `PRIMARY KEY` |
| `status_name` | Статус брони  | `VARCHAR`  | `NOT NULL`    |

---
SQL Scripts

SQL код для создания таблиц для этой базы данных

```sql
CREATE DATABASE airbnb;
```
```sql
CREATE TABLE property (
id INTEGER NOT NULL,
location_id INTEGER NOT NULL,
host_id INTEGER NOT NULL,
nightly_price INTEGER NOT NULL,
property_name VARCHAR NOT NULL,
num_guests INTEGER NOT NULL,
num_bedrooms INTEGER NOT NULL,
description VARCHAR NOT NULL,
CONSTRAINT pk_property PRIMARY KEY (id),
CONSTRAINT fk_property_loc
    FOREIGN KEY (location_id) REFERENCES location (id),
CONSTRAINT fk_property_host
    FOREIGN KEY (host_id) REFERENCES user_account (id)
);
```

```sql
CREATE TABLE location (
id INTEGER NOT NULL,
country_id INTEGER NOT NULL,
location_name VARCHAR NOT NULL,
CONSTRAINT pk_location PRIMARY KEY (id),
CONSTRAINT fk_location_country
    FOREIGN KEY (country_id) REFERENCES country (id)
);
```

```sql
CREATE TABLE country (
id INTEGER NOT NULL,
region VARCHAR NOT NULL,
country_name VARCHAR NOT NULL,
CONSTRAINT pk_country PRIMARY KEY (id)
);
```

```sql
CREATE TABLE user_account (
id INTEGER NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
email VARCHAR NOT NULL,
password VARCHAR NOT NULL,
joined_date DATE NOT NULL
);
```

```sql
CREATE TABLE user_review (
id INTEGER NOT NULL,
property_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
rating INTEGER NOT NULL,
comment VARCHAR NOT NULL,
review_date DATE NOT NULL,
CONSTRAINT pk_userreview PRIMARY KEY (id),
CONSTRAINT fk_userreview_prop
    FOREIGN KEY (property_id) REFERENCES property (id),
CONSTRAINT fk_userreview_user
    FOREIGN KEY (user_id) REFERENCES user_account (id)
);
```

```sql
CREATE TABLE component_rating (
component_id INTEGER NOT NULL,
review_id INTEGER NOT NULL,
rating INTEGER NOT NULL,
CONSTRAINT pk_componentrating PRIMARY KEY (component_id),
CONSTRAINT fk_comprat_review
    FOREIGN KEY (review_id) REFERENCES user_review (id)
);
```

```sql
CREATE TABLE booking (
id INTEGER NOT NULL,
property_id INTEGER NOT NULL,
user_id INTEGER NOT NULL,
booking_status_id INTEGER NOT NULL,
checkin_date DATE NOT NULL,
checkout_date DATE NOT NULL,
nightly_price INTEGER NOT NULL,
cleaning_fee INTEGER NOT NULL,
total_price INTEGER NOT NULL,
CONSTRAINT pk_booking PRIMARY KEY (id),
CONSTRAINT fk_booking_prop
    FOREIGN KEY (property_id) REFERENCES property (id),
CONSTRAINT fk_booking_user
    FOREIGN KEY (user_id) REFERENCES user_account (id),
CONSTRAINT fk_booking_bookstatus
    FOREIGN KEY (booking_status_id) REFERENCES booking_status (id)
);
```

```sql
CREATE TABLE booking_guests (
booking_id INTEGER NOT NULL,
guests VARCHAR NOT NULL,
num_guests INTEGER NOT NULL,
CONSTRAINT fk_bkguest_booking
    FOREIGN KEY (booking_id) REFERENCES booking (id)
);
```

```sql
CREATE TABLE booking_status (
id INTEGER NOT NULL,
status_name VARCHAR NOT NULL,
CONSTRAINT pk_bookingstatus PRIMARY KEY (id)
);
```