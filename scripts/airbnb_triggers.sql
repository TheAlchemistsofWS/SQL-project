CREATE OR REPLACE FUNCTION update_total_price()
RETURNS TRIGGER AS
$$
BEGIN
    NEW.total_price := NEW.nightly_price + NEW.cleaning_fee;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

--1. Обновляем nightly_price
CREATE OR REPLACE TRIGGER update_total_price_trigger
BEFORE INSERT OR UPDATE OF nightly_price, cleaning_fee ON airbnb.booking
FOR EACH ROW
EXECUTE FUNCTION update_total_price();


CREATE OR REPLACE FUNCTION check_nightly_price()
RETURNS TRIGGER AS
$$
BEGIN
    IF NEW.nightly_price < 0 THEN
        RAISE EXCEPTION 'Nightly price cannot be negative';
    END IF;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

--2. проверяем, что значение поля nightly_price в таблице property не может быть отрицательным
CREATE OR REPLACE TRIGGER check_nightly_price_trigger
BEFORE INSERT OR UPDATE OF nightly_price ON airbnb.property
FOR EACH ROW
EXECUTE FUNCTION check_nightly_price();


CREATE OR REPLACE FUNCTION encrypt_password()
RETURNS TRIGGER AS
$$
BEGIN
    NEW.password := MD5(NEW.password);
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

--3. Шифруем пароль пользователя при его вставки или обновлении таблицы
CREATE OR REPLACE TRIGGER encrypt_password_trigger
BEFORE INSERT OR UPDATE OF password ON airbnb.user_account
FOR EACH ROW
EXECUTE FUNCTION encrypt_password();


CREATE OR REPLACE FUNCTION check_unique_email()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM airbnb.user_account WHERE email = NEW.email AND id != NEW.id) THEN
        RAISE EXCEPTION 'Email % already exists.', NEW.email;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--4. Email, который вводит пользователь должен быть уникальным
CREATE TRIGGER trigger_check_unique_email
BEFORE INSERT OR UPDATE ON airbnb.user_account
FOR EACH ROW
EXECUTE FUNCTION check_unique_email();


CREATE OR REPLACE FUNCTION set_joined_date()
RETURNS TRIGGER AS $$
BEGIN
    NEW.joined_date := CURRENT_DATE;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--5. Автоматически заполняем joined_date
CREATE TRIGGER trigger_set_joined_date
BEFORE INSERT ON airbnb.user_account
FOR EACH ROW
EXECUTE FUNCTION set_joined_date();


CREATE OR REPLACE FUNCTION update_booking_status()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.booking_status != OLD.booking_status THEN
        UPDATE booking_status SET status_name = NEW.booking_status WHERE id = OLD.id;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--6. Обновление booking status
CREATE TRIGGER trigger_update_booking_status
AFTER UPDATE ON airbnb.booking
FOR EACH ROW
EXECUTE FUNCTION update_booking_status();
