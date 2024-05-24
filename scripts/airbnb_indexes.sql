CREATE INDEX idx_country_name ON airbnb.country (country_name);

CREATE INDEX idx_location_country_id ON airbnb.location (country_id);

CREATE INDEX idx_user_email ON airbnb.user_account (email);

CREATE INDEX idx_property_location_id ON airbnb.property (location_id);
CREATE INDEX idx_property_host_id ON airbnb.property (host_id);
CREATE INDEX idx_property_nightly_price ON airbnb.property (nightly_price);

CREATE INDEX idx_userreview_property_id ON airbnb.user_review (property_id);
CREATE INDEX idx_userreview_user_id ON airbnb.user_review (user_id);

CREATE INDEX idx_booking_property_id ON airbnb.booking (property_id);
CREATE INDEX idx_booking_user_id ON airbnb.booking (user_id);
CREATE INDEX idx_booking_booking_status_id ON airbnb.booking (booking_status_id);
CREATE INDEX idx_booking_checkin_date ON airbnb.booking (checkin_date);
CREATE INDEX idx_booking_checkout_date ON airbnb.booking (checkout_date);