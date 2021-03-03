INSERT INTO users (name, email, password) VALUES ('Person One', 'person1@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users (name, email, password) VALUES ('Person Two', 'person2@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users (name, email, password) VALUES ('Person Two', 'person2@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES ('Property One', 'description', 'https://i.imgur.com/AEK19ga.jpeg', 'https://i.imgur.com/AEK19ga.jpeg', 100, 1, 3, 4, 'Canada', 'Sarcee Trail NW', 'Calgary', 'AB', 'T3R 0A0', true);
INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES ('Property Two', 'description', 'https://i.imgur.com/AEK19ga.jpeg', 'https://i.imgur.com/AEK19ga.jpeg', 200, 2, 4, 5, 'Canada', 'Sarcee Trail NW', 'Calgary', 'AB', 'T3R 0A0', true);
INSERT INTO properties (title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active) 
VALUES ('Property Three', 'description', 'https://i.imgur.com/AEK19ga.jpeg', 'https://i.imgur.com/AEK19ga.jpeg', 300, 3, 6, 7, 'Canada', 'Sarcee Trail NW', 'Calgary', 'AB', 'T3R 0A0', true);

INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ('2018-09-11', '2018-09-15', 2, 1);
INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ('2018-10-25', '2018-11-01', 2, 2);
INSERT INTO reservations (start_date, end_date, property_id, guest_id) VALUES ('2018-11-07', '2018-11-15', 3, 3);

INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES (1, 3, 1, 4, 'messages');
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES (2, 2, 2, 2, 'messages');
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message) VALUES (3, 3, 3, 5, 'messages');