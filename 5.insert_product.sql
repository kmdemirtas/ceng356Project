-- insertion of categories
INSERT INTO category
    VALUES (99, 'Smartphone'), (60, 'Video Camera'), (45, 'Laptop'), (130, 'Smart TV');

INSERT INTO category
    VALUES (7, 'Gaming'), (16, 'Office');

-- insertion of smartphones
INSERT INTO product
    VALUES (1000, 'Iphone 12', 800, 14,99), (1001, 'Iphone 12 Mini', 650,14, 99), (1002, 'Galaxy Note 20', 780, 19, 99);

-- insertion of smartTVs
INSERT INTO product
    VALUES (1003, '65XH9096', 1400, 54, 130), (1004, '49XH8196', 825, 54, 130), (1009, 'XA11', 1375, 36, 130);

-- insertion of video cameras
INSERT INTO product
    VALUES (1006, 'Legria', 350, 65, 60), (1007, 'Hero Max 360', 500, 3, 60);

-- insertion of laptops
INSERT INTO product
    VALUES (1008, 'X515JF', 840, 156, 45), (1010, 'X540UA', 560, 156, 45);

-- insertion of office devices
INSERT INTO product
    VALUES (1011, 'Workcentre', 240, 98, 16), (1012, 'B10224', 810, 98, 16), (1013, 'Ecotank L3160', 230, 13, 16);

-- insertion of games
INSERT INTO product
    VALUES (1014, 'Cyberpunk 2077', 40, 100, 7), (1015, 'The Witcher 3: Wild Hunt', 20, 100, 7), (1016, 'Fifa 21', 35, 110, 7);