

-- -------- POPULATE DATABASE ---------------------------------------------------------------------------------------------

-- ---------- POPUPLATE TABLE `MODULE` ----------
INSERT INTO "APP"."MODULE" ("OID", "MODULE_ID", "MODULE_NAME") VALUES (1, 'sv3', 'Administrator');
INSERT INTO "APP"."MODULE" ("OID", "MODULE_ID", "MODULE_NAME") VALUES (2, 'sv1', 'eShop');

-- ---------- POPUPLATE TABLE "GROUP" ----------
INSERT INTO "APP"."GROUP" ("OID", "GROUP_NAME", "MODULE_OID") VALUES (1, 'Administrators', 1);
INSERT INTO "APP"."GROUP" ("OID", "GROUP_NAME", "MODULE_OID") VALUES (2, 'Customers', 2);

-- ---------- POPUPLATE TABLE "USER" ----------
INSERT INTO "APP"."USER" ("OID", "USERNAME", "PASSWORD", "EMAIL", "GROUP_OID") VALUES (1, 'manager', 'manager', 'manager@acme.com', 1);

-- ---------- POPUPLATE TABLE "USER_GROUP" ----------
INSERT INTO "APP"."USER_GROUP" ("USER_OID", "GROUP_OID") VALUES (1, 1);
INSERT INTO "APP"."USER_GROUP" ("USER_OID", "GROUP_OID") VALUES (1, 2);

-- ---------- POPUPLATE TABLE "GROUP_MODULE" ----------
INSERT INTO "APP"."GROUP_MODULE" ("GROUP_OID", "MODULE_OID") VALUES (1, 1);
INSERT INTO "APP"."GROUP_MODULE" ("GROUP_OID", "MODULE_OID") VALUES (1, 2);
INSERT INTO "APP"."GROUP_MODULE" ("GROUP_OID", "MODULE_OID") VALUES (2, 2);

-- ---------- POPUPLATE TABLE "STORE" ----------
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (1,'Oslo','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (2,'Barcelona','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (3,'New York','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (5,'Montreal','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (6,'Hamburg','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (7,'Berlin','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (8,'Hong Kong','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (9,'Madrid','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (10,'Copenhagen','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (11,'Chicago','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (12,'London','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (13,'Sidney','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');
INSERT INTO "APP"."STORE" ("OID","ADDRESS","EMAIL","MAP","PHOTO") VALUES (15,'Tokyo','mailto:customer-care@acme.com','upload/map.jpg','upload/location.jpg');

-- ---------- POPUPLATE TABLE "CATEGORY" ----------
INSERT INTO "APP"."CATEGORY" ("OID", "CATEGORY") VALUES (1, 'Tables');
INSERT INTO "APP"."CATEGORY" ("OID", "CATEGORY") VALUES (2, 'Chairs');
INSERT INTO "APP"."CATEGORY" ("OID", "CATEGORY") VALUES (3, 'Lamps');

-- ---------- POPUPLATE TABLE "COMBINATION" ----------
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (1, 1237, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Home Bargain', 3000, 'upload/combo_2.jpg', '2007-01-01 00:00:00', '2008-01-01 00:00:00', 1);
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (2, 9898, 'Make your house a home with the best interior design and the unprecedented quality of our products.', 'Style & Value', 4550, 'upload/combo_1.jpg', '2007-02-05 00:00:00', '2007-11-03 00:00:00', 0);
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (3, 1237, 'Meet with friends in the comfort of a stylish and functional setting.', 'Pick of the site', 500, 'upload/combo_3.jpg', '2007-01-01 00:00:00', '2008-01-01 00:00:00', 0);
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (4, 4123, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Value set', 3500, 'upload/combo_3.jpg', '2007-07-31 00:00:00', '2007-07-09 00:00:00', 0);
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (5, 1243, 'Make your house a home with the best interior design and the unprecedented quality of our products.', 'Big Bundle', 2000, 'upload/combo_1.jpg', '2007-01-01 00:00:00', '2008-01-01 00:00:00', 0);
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (6, 6755, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Special of the day', 500, 'upload/combo_2.jpg', '2007-01-01 00:00:00', '2008-01-01 00:00:00', 0);
INSERT INTO "APP"."COMBINATION" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "PHOTO", "START_DATE", "END_DATE", "HIGHLIGHTED") VALUES (7, 9871, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Christmas Special', 3000, 'upload/combo_5.jpg', '2007-03-06 00:00:00', '2007-10-01 00:00:00', 0);

-- ---------- POPUPLATE TABLE "TECHRECORD" ----------
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (1, 'upload/colors.jpg', '144x34x300');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (2, 'upload/colors.jpg', '144x111x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (3, 'upload/colors.jpg', '144x34x300');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (4, 'upload/colors.jpg', '144x34x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (5, 'upload/colors.jpg', '144x111x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (6, 'upload/colors.jpg', '11x23x23');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (7, 'upload/colors.jpg', '144x23x170');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (8, 'upload/colors.jpg', '144x34x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (9, 'upload/colors.jpg', '144x34x150');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (10, 'upload/colors.jpg', '144x34x300');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (11, 'upload/colors.jpg', '144x34x150');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (12, 'upload/colors.jpg', '144x34x150');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (13, 'upload/colors.jpg', '144x111x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (14, 'upload/colors.jpg', '144x11x130');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (15, 'upload/colors.jpg', '144x11x130');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (16, 'upload/colors.jpg', '144x111x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (17, 'upload/colors.jpg', '144x34x300');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (18, 'upload/colors.jpg', '544x33x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (19, 'upload/colors.jpg', '144x111x100');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (20, 'upload/colors.jpg', '144x11x130');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (21, 'upload/colors.jpg', '23x45x67');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (22, 'upload/colors.jpg', '4x5x6');
INSERT INTO "APP"."TECH_RECORD" ("OID", "COLORS", "DIMENSIONS") VALUES (23, 'upload/colors.jpg', '12x34x11');

-- ---------- POPUPLATE TABLE "PRODUCT" ----------
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (1, 5125, 'Stainless steel meets crystal and silk to make the comfort and look.', 'Wilderness', 1500, 'upload/small_chair_5.jpg', 0, 2);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (2, 5126, 'The spirit of tradition, renovated by the most modern technologies and design.', 'Pink fantasy', 3500, 'upload/small_table_1.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (3, 5127, 'Brighten up your living room with warmly illuminating ideas.', 'Allair', 4550, 'upload/small_chair_2.jpg', 0, 2);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (4, 6755, 'The spirit of tradition, renovated by the most modern technologies and design.', 'Amplitude', 3000, 'upload/small_chair_2.jpg', 0, 2);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (5, 8630, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Baronetto', 3000, 'upload/small_lamp_4.jpg', 0, 3);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (6, 1243, 'Make your house a home with the best interior design and the unprecedented quality of our products.', 'Atlas', 1000, 'upload/small_table_4.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (7, 1237, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Aladdin', 1500, 'upload/small_table_1.jpg', 1, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (8, 7145, 'High quality Italian design for relaxing and enjoying life with your family and friends.', 'Silvestream', 1500, 'upload/small_lamp_1.jpg', 0, 3);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (9, 4678, 'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.', 'Sara', 500, 'upload/small_lamp_2.jpg', 0, 3);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (10, 1243, 'Meet with friends in the comfort of a stylish and functional setting.', 'Mambo', 1000, 'upload/small_table_1.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (11, 1238, 'Stainless steel meets crystal and silk to make the comfort and look.', 'Euclid', 4550, 'upload/small_table_1.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (13, 4680, 'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.', 'Andros', 1200, 'upload/small_lamp_1.jpg', 0, 3);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (14, 7148, 'High quality Italian design for relaxing and enjoying life with your family and friends.', 'Byron', 1000, 'upload/small_chair_3.jpg', NULL, 2);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (16, 1245, 'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.', 'Landscape', 500, 'upload/small_table_3.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (17, 4123, 'The spirit of tradition, renovated by the most modern technologies and design.', 'Rodolfo', 4550, 'upload/small_table_1.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (21, 9876, 'A fabulous piece of furniture for relaxing with friends.', 'Lucid', 234, 'upload/small_table_5.jpg', 0, 1);
INSERT INTO "APP"."PRODUCT" ("OID", "CODE", "DESCRIPTION", "NAME", "PRICE", "THUMBNAIL", "HIGHLIGHTED", "CATEGORY_OID") VALUES (22, 3456, 'A marvellous lamp shedding a new light to your family life.', 'Blue Fountain', 124, 'upload/small_lamp_5.jpg', 0, 3);

-- ---------- POPUPLATE TABLE "PRODUCT_COMBINATION" ----------
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (2, 2);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (2, 3);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (2, 5);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (2, 7);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (3, 7);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (4, 3);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (4, 4);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (5, 2);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (5, 6);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (5, 7);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (7, 2);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (7, 3);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (8, 1);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (8, 7);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (9, 4);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (10, 2);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (11, 2);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (11, 3);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (11, 6);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (13, 4);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (13, 5);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (14, 5);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (21, 2);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (21, 5);
INSERT INTO "APP"."PRODUCT_COMBINATION" ("PRODUCT_OID", "COMBINATION_OID") VALUES (22, 4);


-- ---------- POPUPLATE TABLE "TECHRECORD_PRODUCT" ----------
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (1, 12);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (2, 9);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (3, 13);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (4, 15);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (5, 3);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (6, 8);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (7, 2);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (8, 17);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (9, 14);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (10, 1);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (11, 19);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (13, 10);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (14, 20);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (16, 5);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (17, 6);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (21, 21);
INSERT INTO "APP"."TECHRECORD_PRODUCT" ("PRODUCT_OID", "TECH_RECORD_OID") VALUES (22, 23);


-- ---------- POPUPLATE TABLE "IMAGE" ----------


INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (1,'The spirit of tradition, renovated by the most modern technologies and design.','upload/lamp_2.jpg',14);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (2,'Brighten up your living room with warmly illuminating ideas.','upload/table_1.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (3,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_4.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (4,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/chair_3.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (5,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_4.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (6,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/lamp_3.jpg',10);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (7,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/lamp_1.jpg',17);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (8,'The spirit of tradition, renovated by the most modern technologies and design.','upload/table_3.jpg',2);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (9,'Brighten up your living room with warmly illuminating ideas.','upload/chair_1.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (10,'Meet with friends in the comfort of a stylish and functional setting.','upload/table_5.jpg',8);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (11,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/lamp_5.jpg',1);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (12,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/table_4.jpg',9);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (13,'Stainless steel meets crystal and silk to make the comfort and look.','upload/chair_3.jpg',6);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (14,'The spirit of tradition, renovated by the most modern technologies and design.','upload/chair_4.jpg',16);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (15,'Brighten up your living room with warmly illuminating ideas.','upload/table_4.jpg',2);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (16,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_5.jpg',8);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (17,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_2.jpg',7);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (18,'Brighten up your living room with warmly illuminating ideas.','upload/table_2.jpg',14);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (19,'The spirit of tradition, renovated by the most modern technologies and design.','upload/chair_4.jpg',16);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (20,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/table_5.jpg',10);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (21,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/chair_1.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (22,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/chair_5.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (23,'Brighten up your living room with warmly illuminating ideas.','upload/chair_5.jpg',1);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (24,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/table_4.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (25,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_4.jpg',16);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (26,'Stainless steel meets crystal and silk to make the comfort and look.','upload/lamp_4.jpg',17);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (27,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/lamp_3.jpg',8);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (28,'The spirit of tradition, renovated by the most modern technologies and design.','upload/table_2.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (29,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/table_5.jpg',13);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (30,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_3.jpg',16);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (31,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/chair_4.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (32,'Brighten up your living room with warmly illuminating ideas.','upload/table_5.jpg',5);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (33,'The spirit of tradition, renovated by the most modern technologies and design.','upload/table_4.jpg',13);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (34,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/table_3.jpg',8);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (35,'Meet with friends in the comfort of a stylish and functional setting.','upload/chair_3.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (36,'Brighten up your living room with warmly illuminating ideas.','upload/chair_4.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (37,'Brighten up your living room with warmly illuminating ideas.','upload/chair_4.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (38,'The spirit of tradition, renovated by the most modern technologies and design.','upload/table_2.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (39,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/chair_4.jpg',16);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (40,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/table_3.jpg',17);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (41,'Stainless steel meets crystal and silk to make the comfort and look.','upload/lamp_3.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (42,'Meet with friends in the comfort of a stylish and functional setting.','upload/table_2.jpg',10);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (43,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_1.jpg',1);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (44,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_5.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (45,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/chair_3.jpg',9);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (46,'The spirit of tradition, renovated by the most modern technologies and design.','upload/chair_1.jpg',17);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (47,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/table_4.jpg',10);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (48,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_3.jpg',1);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (49,'Meet with friends in the comfort of a stylish and functional setting.','upload/table_3.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (50,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_3.jpg',2);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (51,'Meet with friends in the comfort of a stylish and functional setting.','upload/chair_3.jpg',6);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (52,'Stainless steel meets crystal and silk to make the comfort and look.','upload/table_4.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (53,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/chair_3.jpg',8);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (54,'Brighten up your living room with warmly illuminating ideas.','upload/chair_4.jpg',1);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (55,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/table_5.jpg',2);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (56,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_1.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (57,'Brighten up your living room with warmly illuminating ideas.','upload/table_5.jpg',7);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (58,'Stainless steel meets crystal and silk to make the comfort and look.','upload/chair_5.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (59,'The spirit of tradition, renovated by the most modern technologies and design.','upload/lamp_1.jpg',3);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (60,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_3.jpg',7);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (61,'Stainless steel meets crystal and silk to make the comfort and look.','upload/lamp_1.jpg',10);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (62,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/chair_4.jpg',6);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (63,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/table_2.jpg',13);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (64,'High quality Italian design for relaxing and enjoying life with your family and friends.','upload/table_4.jpg',17);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (65,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_3.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (66,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/table_2.jpg',9);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (67,'The spirit of tradition, renovated by the most modern technologies and design.','upload/lamp_4.jpg',5);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (68,'Meet with friends in the comfort of a stylish and functional setting.','upload/lamp_1.jpg',1);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (69,'Stainless steel meets crystal and silk to make the comfort and look.','upload/table_2.jpg',16);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (70,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/lamp_4.jpg',17);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (71,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/lamp_3.jpg',4);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (72,'Make your house a home with the best interior design and the unprecedented quality of our products.','upload/table_5.jpg',11);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (73,'Create your space and make it flexible enough to fit whatever the moment calls for, from meeting friends to enjoying your family.','upload/lamp_2.jpg',2);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (74,'Perfect for your office, unbeatable for your home, the most versatile interior design is found at Acme.','upload/lamp_4.jpg',6);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (75,'Brighten up your living room with warmly illuminating ideas.','upload/lamp_4.jpg',5);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (76,'See the beauty of this article in the glitter of the night.','upload/lamp_5.jpg',22);
INSERT INTO "APP"."IMAGE" ("OID","DESCRIPTION","PICTURE","PRODUCT_OID") VALUES (77,'A mix of technology and innovative design that will add value to your h','upload/lamp_4.jpg',22);
