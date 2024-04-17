INSERT INTO airbnb.country(id, region, country_name) VALUES
                                                     (0, 'Europe', 'Albania'),
                                                     (1, 'Africa', 'Algeria'),
                                                     (2, 'Africa', 'Angola'),
                                                     (3, 'Latin America', 'Argentina'),
                                                     (4, 'Middle East', 'Uzbekistan'),
                                                     (5, 'Middle East', 'Yemen'),
                                                     (6, 'Africa', 'Egypt'),
                                                     (7, 'Europe', 'Ukraine'),
                                                     (8, 'Middle East', 'UAE'),
                                                     (9, 'Europe', 'Sweden'),
                                                     (10, 'Europe', 'Switzerland'),
                                                     (11, 'Asia', 'Singapore'),
                                                     (12, 'Europe', 'Slovenia'),
                                                     (13, 'Europe', 'Spain'),
                                                     (14, 'Europe', 'Russian Federation'),
                                                     (15, 'Middle East', 'Qatar'),
                                                     (16, 'Europe', 'Portugal'),
                                                     (17, 'Europe', 'Poland'),
                                                     (18, 'Pacific Islands', 'New Zealand'),
                                                     (19, 'Latin America', 'Brazil'),
                                                     (20, 'Latin America', 'Chile'),
                                                     (21, 'Latin America', 'Colombia'),
                                                     (22, 'Latin America', 'Ecuador'),
                                                     (23, 'Latin America', 'Peru'),
                                                     (24, 'Latin America', 'Venezuela'),
                                                     (25, 'Latin America', 'Uruguay'),
                                                     (26, 'Latin America', 'Paraguay'),
                                                     (27, 'Latin America', 'Bolivia'),
                                                     (28, 'Latin America', 'El Salvador'),
                                                     (29, 'Latin America', 'Honduras'),
                                                     (30, 'Latin America', 'Nicaragua');

INSERT INTO airbnb.location(id, country_id, location_name) VALUES
                                                        (0, 1, 'Botanical Garden Hamma'),
                                                        (1, 4, 'Margilan'),
                                                        (2, 5, 'Qalansiyah Beach'),
                                                        (3, 6, 'Pyramids at Giza'),
                                                        (4, 7, 'Hoverla Mountain'),
                                                        (5, 8, 'Burj Khalifa'),
                                                        (6, 9, 'The Icehotel'),
                                                        (7, 10, 'Geneva'),
                                                        (8, 11, 'Fountain of Wealth'),
                                                        (9, 12, 'Predjama Castle'),
                                                        (10, 13, 'Granada'),
                                                        (11, 14, 'Red Square'),
                                                        (12, 15, 'Banana Island'),
                                                        (13, 16, 'Porto'),
                                                        (14, 17, 'Warsaw'),
                                                        (15, 18, 'Gisborne'),
                                                        (16, 0, 'The Grand Park of Tirana'),
                                                        (17, 2, 'Tundavala'),
                                                        (18, 3, 'Mendoza');

INSERT INTO airbnb.user_account(id, first_name, last_name, email, password, joined_date) values
                        (0, 'Dan', 'Nolan', 'dan@example.com', 'password0', '2022-01-07'),
                        (1, 'Alice', 'Smith', 'alice@example.com', 'password1', '2022-01-01'),
                        (2, 'Bob', 'Johnson', 'bob@example.com', 'password2', '2022-01-02'),
                        (3, 'Charlie', 'Williams', 'charlie@example.com', 'password3', '2022-01-03'),
                        (4, 'David', 'Jones', 'david@example.com', 'password4', '2022-01-04'),
                        (5, 'Emma', 'Brown', 'emma@example.com', 'password5', '2022-01-05'),
                        (6, 'Frank', 'Davis', 'frank@example.com', 'password6', '2022-01-06'),
                        (7, 'Grace', 'Miller', 'grace@example.com', 'password7', '2022-01-07'),
                        (8, 'Henry', 'Wilson', 'henry@example.com', 'password8', '2022-01-08'),
                        (9, 'Ivy', 'Moore', 'ivy@example.com', 'password9', '2022-01-09'),
                        (10, 'Jack', 'Taylor', 'jack@example.com', 'password10', '2022-01-10'),
                        (11, 'Kate', 'Anderson', 'kate@example.com', 'password11', '2022-01-11'),
                        (12, 'Leo', 'Parker', 'leo2@example.com', 'password12', '2022-01-12'),
                        (13, 'Mia', 'Evans', 'mia2@example.com', 'password13', '2022-01-13'),
                        (14, 'Noah', 'White', 'noah@example.com', 'password14', '2022-01-14'),
                        (15, 'Olivia', 'Scott', 'olivia2@example.com', 'password15', '2022-01-15'),
                        (16, 'Peter', 'Allen', 'peter2@example.com', 'password16', '2022-01-16'),
                        (17, 'Quinn', 'Baker', 'quinn@example.com', 'password17', '2022-01-17'),
                        (18, 'Leo', 'Par', 'leo@example.com', 'password18', '2022-01-12'),
                        (19, 'Mia', 'Evan', 'mia@example.com', 'password19', '2022-01-13'),
                        (20, 'Noah', 'Red', 'noah2@example.com', 'password20', '2022-01-14'),
                        (21, 'Olivia', 'Towns', 'olivia@example.com', 'password21', '2022-01-15'),
                        (22, 'Peter', 'Bober', 'peter@example.com', 'password22', '2022-01-16'),
                        (23, 'Garry', 'James', 'garry@example.com', 'password23', '2022-01-17'),
                        (24, 'Nick', 'Derry', 'nick@example.com', 'password24', '2022-01-18'),
                        (25, 'Gena', 'Scott', 'gena@example.com', 'password25', '2022-01-15'),
                        (26, 'Egor', 'Allen', 'egor@example.com', 'password26', '2022-01-16'),
                        (27, 'Kamil', 'Baker', 'kamil@example.com', 'password27', '2022-01-17'),
                        (28, 'Ilya', 'Par', 'ilya@example.com', 'password28', '2022-01-12'),
                        (29, 'Kirill', 'Evan', 'kirill@example.com', 'password29', '2022-01-13'),
                        (30, 'Noahh', 'Red', 'noahh@example.com', 'password30', '2022-01-14'),
                        (31, 'Nil', 'Towns', 'nil@example.com', 'password31', '2022-01-15'),
                        (32, 'Rose', 'Carter', 'rose@example.com', 'password32', '2022-01-18');

INSERT INTO airbnb.property(id, location_id, host_id, nightly_price, property_name, num_guests, num_bedrooms, description) VALUES
                    (0, 0, 0, 150, 'Rainy Hotel', 4, 2, 'Quaint house by the orange lake'),
                    (1, 1, 1, 100, 'Cozy Cottage', 2, 1, 'A charming cottage in the countryside.'),
                    (2, 2, 2, 120, 'Sunny Apartment', 3, 2, 'Bright and modern apartment with a view.'),
                    (3, 3, 3, 150, 'Seaside Villa', 6, 3, 'Luxurious villa by the beach.'),
                    (4, 4, 4, 80, 'Mountain Cabin', 4, 2, 'Rustic cabin with stunning mountain views.'),
                    (5, 5, 5, 200, 'City Loft', 2, 1, 'Sleek loft in the heart of the city.'),
                    (6, 6, 6, 90, 'Lake House', 5, 3, 'Quaint house by the lake.'),
                    (7, 7, 7, 110, 'Country Retreat', 4, 2, 'Tranquil retreat in the countryside.'),
                    (8, 8, 8, 130, 'Urban Oasis', 3, 1, 'A hidden gem in the bustling city.'),
                    (9, 9, 9, 180, 'Luxury Penthouse', 2, 1, 'Opulent penthouse with panoramic views.'),
                    (10, 10, 10, 95, 'Riverside Cabin', 3, 2, 'Charming cabin by the river.'),
                    (11, 11, 11, 140, 'Beachfront Bungalow', 4, 2, 'Relaxing bungalow steps from the beach.'),
                    (12, 12, 12, 160, 'Mountain Chalet', 6, 3, 'Elegant chalet nestled in the mountains.'),
                    (13, 13, 13, 70, 'Countryside Farmhouse', 8, 4, 'Traditional farmhouse surrounded by fields.'),
                    (14, 14, 14, 250, 'Penthouse Suite', 2, 1, 'Exquisite suite with top-notch amenities.'),
                    (15, 15, 15, 120, 'Lakeside Lodge', 5, 3, 'Cozy lodge overlooking the lake.'),
                    (16, 16 ,16 ,110 , 'Garden Retreat' ,3 ,2 , 'Peaceful retreat with lush gardens.'),
                    (17 ,17 ,17 ,190 , 'Modern Townhouse' ,4 ,2 , 'Sleek townhouse in a vibrant neighborhood.'),
                    (18 ,18 ,18 ,80 , 'Hilltop Hideaway' ,2 ,1 , 'Secluded hideaway with panoramic views.'),
                    (19, 18, 18, 120, 'Cozy Cabin', 2, 1, 'Rustic cabin in the woods'),
                    (20, 15, 15, 180, 'Beachfront Bungalow', 4, 2, 'Charming bungalow steps away from the beach'),
                    (21, 16, 16, 250, 'Luxury Loft', 2, 1, 'Modern loft with city views'),
                    (22, 17, 17, 150, 'Mountain Retreat', 8, 4, 'Secluded retreat in the mountains'),
                    (23, 2, 2, 300, 'Seaside Mansion', 10, 5, 'Grand mansion overlooking the ocean'),
                    (24, 12, 12, 100, 'Quaint Cottage', 4, 2, 'Adorable cottage in a peaceful village'),
                    (25, 13, 13, 160, 'Lakeside Lodge', 6, 3, 'Rustic lodge by the lake'),
                    (26, 14, 14, 220, 'Modern Condo', 4, 2, 'Sleek condo in the heart of the city'),
                    (27, 17, 17, 130, 'Garden Guesthouse', 2, 1, 'Tranquil guesthouse surrounded by gardens'),
                    (28, 18, 18, 190, 'Historic Manor', 12, 6, 'Stately manor with a rich history'),
                    (29, 9, 9, 140, 'Country Farmhouse', 8, 4, 'Charming farmhouse in the countryside'),
                    (30, 10, 10, 170, 'Riverside Retreat', 6, 3, 'Serene retreat along the river'),
                    (31, 11, 11, 240, 'Penthouse Paradise', 2, 1, 'Luxurious penthouse with panoramic views'),
                    (32, 12, 12, 110, 'Treehouse Hideaway', 2, 1, 'Unique treehouse escape in the forest'),
                    (33, 13 ,13 ,260 , 'Lakeview Chalet' ,5 ,3 , 'Picturesque chalet overlooking the lake');


INSERT INTO airbnb.user_review(id, property_id, user_id, rating, comment, review_date) VALUES
                        (0, 18, 18, 4, 'I like it!', '2022-01-04'),
                        (1, 0, 0, 4, 'Great place to stay!', '2022-01-05'),
                        (2, 1, 1, 5, 'Fantastic view from the apartment.', '2022-01-06'),
                        (3, 2, 2, 4, 'Enjoyed our time at the villa.', '2022-01-07'),
                        (4, 3, 3, 3, 'Cozy cabin with beautiful views.', '2022-01-08'),
                        (5, 4, 4, 5, 'Perfect location in the city.', '2022-01-09'),
                        (6, 5, 5, 4, 'Relaxing stay by the lake.', '2022-01-10'),
                        (7, 6, 6, 3, 'Peaceful countryside retreat.', '2022-01-11'),
                        (8, 7, 7, 4, 'Hidden gem in the city.', '2022-01-12'),
                        (9, 8, 8, 5, 'Luxurious penthouse experience.', '2022-01-13'),
                        (10, 9, 9, 3, 'Charming cabin by the river.', '2022-01-14'),
                        (11, 10, 10, 4, 'Beachfront bungalow was lovely.', '2022-01-15'),
                        (12, 11, 11, 5, 'Elegant chalet with stunning views.', '2022-01-16'),
                        (13, 12, 12, 4, 'Traditional farmhouse experience.', '2022-01-17'),
                        (14, 13, 13, 3, 'Top-notch amenities in the suite.', '2022-01-18'),
                        (15, 14, 14, 5, 'Cozy lodge with great views.', '2022-01-19'),
                        (16 ,15 ,15 ,4 , 'Beautiful gardens at the retreat.' , '2022-01-20'),
                        (17 ,16 ,16 ,3 , 'Vibrant neighborhood townhouse.' , '2022-01-21'),
                        (18 ,17 ,17 ,4 , 'Secluded hideaway for a peaceful stay.' , '2022-01-22'),
                        (19, 19, 19, 5, 'Cozy and comfortable', '2022-01-20'),
                        (20, 20, 20, 4, 'Lovely bungalow', '2022-01-22'),
                        (21, 21, 21, 5, 'Luxurious loft', '2022-01-25'),
                        (22, 22, 22, 3, 'Not as expected', '2022-01-30'),
                        (23, 23, 23, 4, 'Beautiful mansion', '2022-02-05'),
                        (24, 24, 24, 5, 'Charming cottage', '2022-02-10'),
                        (25, 25, 25, 4, 'Peaceful lodge', '2022-02-15'),
                        (26, 26, 26, 5, 'Modern condo', '2022-02-20'),
                        (27, 27, 27, 3, 'Tranquil guesthouse', '2022-02-25'),
                        (28, 28, 28, 4, 'Historic manor', '2022-03-02'),
                        (29, 29, 29, 5, 'Country farmhouse', '2022-03-05'),
                        (30, 30, 30, 4, 'Serene retreat', '2022-03-10');


INSERT INTO airbnb.component_rating(component_id, review_id, rating) VALUES
                            (1, 0, 4),
                            (2, 1, 5),
                            (3, 2, 4),
                            (4, 3, 3),
                            (5, 4, 5),
                            (6, 5, 4),
                            (7, 6, 3),
                            (8, 7, 4),
                            (9, 8, 5),
                            (10, 9, 3),
                            (11, 10, 4),
                            (12, 11, 5),
                            (13, 12, 4),
                            (14, 13, 3),
                            (15, 14, 5),
                            (16, 15, 4),
                            (17, 16, 3),
                            (18, 17, 4),
                            (19, 1, 3),
                            (20, 2, 5),
                            (21, 4, 3),
                            (22, 10, 4),
                            (23, 12, 5),
                            (24, 11, 4),
                            (25, 10, 3),
                            (26, 4, 5),
                            (27, 5, 4),
                            (28, 6, 3),
                            (29, 7, 4),
                            (30, 8, 3);

INSERT INTO airbnb.booking_status(id, status_name) VALUES
                            (1, 'Active'),
                            (2, 'Inactive'),
                            (3, 'Pending'),
                            (4, 'Completed'),
                            (5, 'Cancelled'),
                            (6, 'On Hold'),
                            (7, 'Approved'),
                            (8, 'Rejected'),
                            (9, 'Draft'),
                            (10, 'Under Review'),
                            (11, 'Scheduled'),
                            (12, 'In Progress'),
                            (13, 'Not Started'),
                            (14, 'Delayed'),
                            (15, 'Resolved'),
                            (16, 'Closed'),
                            (17, 'Reopened'),
                            (18, 'Archived'),
                            (19, 'Draftt'),
                            (20, 'Under Revieww'),
                            (21, 'Scheduledd'),
                            (22, 'In Progresss'),
                            (23, 'Not Startedd'),
                            (24, 'Delayedd'),
                            (25, 'Resolvedd'),
                            (26, 'Closedd'),
                            (27, 'Reopenedd'),
                            (28, 'Archivedd'),
                            (29, 'Resolveddd'),
                            (30, 'Closeddd'),
                            (31, 'Reopeneddd'),
                            (32, 'Archiveddd');

INSERT INTO airbnb.booking(id, property_id, user_id, booking_status_id, checkin_date, checkout_date, nightly_price, cleaning_fee, total_price) VALUES
(2, 1, 1, 2, '2022-10-10', '2022-10-15', 120, 60, 720),
(3, 2, 2, 3, '2022-11-05', '2022-11-08', 80, 40, 280),
(4, 3, 3, 1, '2022-12-20', '2022-12-25', 150, 70, 850),
(5, 4, 4, 4, '2023-01-15', '2023-01-20', 90, 45, 495),
(6, 5, 5, 5, '2023-02-10', '2023-02-15', 110, 55, 605),
(7, 6, 6, 6, '2023-03-25', '2023-03-28', 95, 50, 335),
(8, 7, 7, 7, '2023-04-10', '2023-04-15', 130, 60, 780),
(9, 8, 8, 8, '2023-05-05', '2023-05-08', 85, 40, 295),
(10, 9, 9, 9, '2023-06-20', '2023-06-25', 160, 70, 910),
(11, 10, 10, 10,'2023-07-15' ,'2023-07-20' ,100, 50 ,550 ),
(12 ,11 ,11 ,11 ,'2023-08-10' ,'2023-08-15',120, 60, 720 ),
(13 ,12 ,12 ,12 ,'2023-09-25' ,'2023-09-28',95, 45, 400 ),
(14 ,13 ,13 ,13 ,'2023-10-10' ,'2023-10-15',110, 55, 605 ),
(15 ,14 ,14 ,14 ,'2023-11-05' ,'2023-11-08',90, 40, 320 ),
(16 ,15 ,15 ,15 ,'2023-12-20' ,'2023-12-25',140, 70, 840 ),
(17 ,16 ,16 ,16 ,'2024-01-15' ,'2024-01-20',100, 50, 550 ),
(18 ,17 ,17 ,17 ,'2024-02-10' ,'2024-02-15',120, 60, 720 ),
(0, 18, 18, 18, '2024-02-11', '2024-02-15', 100, 60, 170),
(19, 18, 18, 18, '2022-10-11', '2022-10-16', 150, 70, 920),
(20, 19, 19, 19, '2022-10-12', '2022-10-17', 180, 80, 1160),
(21, 20, 20, 20, '2022-10-13', '2022-10-18', 200, 90, 1300),
(22, 21, 21, 21, '2022-10-14', '2022-10-19', 220, 100, 1420),
(23, 22, 22, 22, '2022-10-15', '2022-10-20', 250, 110, 1550),
(24, 23, 23, 23, '2022-10-16', '2022-10-21', 270, 120, 1670),
(25, 24, 24, 24, '2022-10-17', '2022-10-22', 300, 130, 1800),
(26, 25, 25, 25, '2022-10-18', '2022-10-23', 320, 140, 1920),
(27, 26, 26, 26, '2022-10-19', '2022-10-24', 350, 150, 2050),
(28, 27, 27, 27, '2022-10-20', '2022-10-25', 370, 160, 2170),
(29, 28, 28, 28, '2022-10-21', '2022-10-26', 400, 170, 2300),
(30, 29, 29, 29, '2022-10-22', '2022-10-27', 420, 180, 2420),
(31, 30, 30, 30, '2022-10-23', '2022-10-28', 450, 190, 2550);

INSERT INTO airbnb.booking_guests(booking_id, guests, num_guests) VALUES
                                                               (2, 'Adults', 4),
                                                               (3, 'Children', 1),
                                                               (4, 'Infants', 1),
                                                               (5, 'Pets', 2),
                                                               (4, 'Children', 1),
                                                               (5, 'Children', 1),
                                                               (6, 'Children', 1),
                                                               (7, 'Children', 1),
                                                               (8, 'Children', 1),
                                                               (9, 'Children', 2),
                                                               (10, 'Children', 1),
                                                               (11, 'Children', 2),
                                                               (12, 'Children', 1),
                                                               (13, 'Children', 2),
                                                               (14, 'Children', 2),
                                                               (15, 'Children', 3),
                                                               (16, 'Adults', 1),
                                                               (17, 'Adults', 2),
                                                               (18, 'Adults', 3),
                                                               (19, 'Adults', 3),
                                                               (20, 'Adults', 2),
                                                               (21, 'Adults', 1),
                                                               (22, 'Adults', 1),
                                                               (23, 'Adults', 4),
                                                               (24, 'Adults', 1),
                                                               (25, 'Infants', 1),
                                                               (26, 'Pets', 1),
                                                               (27, 'Infants', 1),
                                                               (28, 'Pets', 1),
                                                               (29, 'Infants', 2),
                                                               (30, 'Pets', 1);



