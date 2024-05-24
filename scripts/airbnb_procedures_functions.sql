CREATE OR REPLACE PROCEDURE add_booking (
    IN p_property_id INT,
    IN p_user_id INT,
    IN p_booking_status_id INT,
    IN p_checkin_date DATE,
    IN p_checkout_date DATE,
    IN p_nightly_price INT,
    IN p_cleaning_fee INT,
    IN p_total_price INT
)
AS $$
BEGIN
    IF NOT EXISTS (
        SELECT * FROM airbnb.booking
        WHERE property_id = p_property_id
        AND (checkin_date BETWEEN p_checkin_date AND p_checkout_date
        OR checkout_date BETWEEN p_checkin_date AND p_checkout_date)
    ) THEN
        INSERT INTO airbnb.booking (property_id, user_id, booking_status_id, checkin_date, checkout_date, nightly_price, cleaning_fee, total_price)
        VALUES (p_property_id, p_user_id, p_booking_status_id, p_checkin_date, p_checkout_date, p_nightly_price, p_cleaning_fee, p_total_price);
    ELSE
        RAISE EXCEPTION 'Property is not available for the specified dates.';
    END IF;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE get_user_bookings (
    IN p_user_id INT
)
AS $$
BEGIN
    SELECT * FROM airbnb.booking
    WHERE user_id = p_user_id;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION get_property_avg_rating (
    IN p_property_id INT
)
RETURNS DECIMAL(3,2)
AS $$
DECLARE
    avg_rating DECIMAL(3,2);
BEGIN
    SELECT AVG(rating) INTO avg_rating
    FROM airbnb.user_review
    WHERE property_id = p_property_id;
    RETURN avg_rating;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE add_user_review (
    IN p_property_id INT,
    IN p_user_id INT,
    IN p_rating INT,
    IN p_comment VARCHAR,
    IN p_review_date DATE
)
AS $$
BEGIN
    IF EXISTS (
        SELECT * FROM airbnb.booking
        WHERE property_id = p_property_id
        AND user_id = p_user_id
        AND checkout_date < p_review_date
    ) THEN
        INSERT INTO airbnb.user_review (property_id, user_id, rating, comment, review_date)
        VALUES (p_property_id, p_user_id, p_rating, p_comment, p_review_date);
    ELSE
        RAISE EXCEPTION 'User has not completed a stay at this property.';
    END IF;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION get_property_details (
    IN p_property_id INT
)
RETURNS TABLE (
    property_name VARCHAR,
    location_name VARCHAR,
    nightly_price INT,
    num_guests INT,
    num_bedrooms INT,
    description VARCHAR,
    avg_rating DECIMAL(3,2)
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.property_name,
        l.location_name,
        p.nightly_price,
        p.num_guests,
        p.num_bedrooms,
        p.description,
        (SELECT AVG(rating) FROM airbnb.user_review WHERE property_id = p_property_id) AS avg_rating
    FROM airbnb.property p
    JOIN airbnb.location l ON p.location_id = l.id
    WHERE p.id = p_property_id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE update_booking_status (
    IN p_booking_id INT,
    IN p_new_status_id INT
)
AS $$
BEGIN
    UPDATE airbnb.booking
    SET booking_status_id = p_new_status_id
    WHERE id = p_booking_id;
END;
$$ LANGUAGE plpgsql;
