CREATE SCHEMA IF NOT EXISTS airbnb;

CREATE TABLE IF NOT EXISTS airbnb.country (
id INTEGER NOT NULL,
region VARCHAR NOT NULL,
country_name VARCHAR NOT NULL UNIQUE,
CONSTRAINT pk_country PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS airbnb.location (
id INTEGER NOT NULL,
country_id INTEGER NOT NULL,
location_name VARCHAR NOT NULL,
CONSTRAINT pk_location PRIMARY KEY (id),
CONSTRAINT fk_location_country
    FOREIGN KEY (country_id) REFERENCES country (id)
);

CREATE TABLE IF NOT EXISTS airbnb.user_account(
id INTEGER NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
email VARCHAR NOT NULL UNIQUE,
password VARCHAR NOT NULL,
joined_date DATE NOT NULL,
CONSTRAINT pk_user_account PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS airbnb.property (
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

CREATE TABLE IF NOT EXISTS airbnb.user_review (
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

CREATE TABLE IF NOT EXISTS airbnb.component_rating (
component_id INTEGER NOT NULL,
review_id INTEGER NOT NULL,
rating INTEGER NOT NULL,
CONSTRAINT pk_componentrating PRIMARY KEY (component_id),
CONSTRAINT fk_comprat_review
    FOREIGN KEY (review_id) REFERENCES user_review (id)
);

CREATE TABLE IF NOT EXISTS airbnb.booking_status (
id INTEGER NOT NULL,
status_name VARCHAR NOT NULL UNIQUE,
CONSTRAINT pk_bookingstatus PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS airbnb.booking (
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

CREATE TABLE IF NOT EXISTS airbnb.booking_guests (
booking_id INTEGER NOT NULL,
guests VARCHAR NOT NULL,
num_guests INTEGER NOT NULL,
CONSTRAINT fk_bkguest_booking
    FOREIGN KEY (booking_id) REFERENCES booking (id)
);
