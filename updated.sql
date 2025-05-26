INSERT INTO "public"."crops" ("id", "name") 
  VALUES ('1', 'Maize'), ('2', 'Beans'), ('3', 'Wheat'), ('4', 'Rice'), ('5', 'Tomatoes');

INSERT INTO "public"."market_prices" ("id", "market_id", "crop_id", "price", "date") 
  VALUES 
  ('17', '1', '1', '100.00', '2025-05-26'), 
  ('18', '1', '2', '120.50', '2025-05-26'), 
  ('19', '2', '1', '98.75', '2025-05-25'), 
  ('20', '2', '3', '110.00', '2025-05-25'), 
  ('21', '3', '2', '130.00', '2025-05-24'), 
  ('22', '3', '4', '85.00', '2025-05-24'), 
  ('23', '4', '1', '95.00', '2025-05-23'), 
  ('24', '4', '5', '140.00', '2025-05-23'), 
  ('25', '5', '3', '115.00', '2025-05-22'), 
  ('26', '5', '4', '90.00', '2025-05-22'), 
  ('27', '6', '2', '125.00', '2025-05-21'), 
  ('28', '6', '5', '135.00', '2025-05-21'), 
  ('29', '7', '1', '105.00', '2025-05-20'), 
  ('30', '8', '3', '112.00', '2025-05-19'), 
  ('31', '9', '4', '88.00', '2025-05-18'), 
  ('32', '10', '5', '150.00', '2025-05-17');
INSERT INTO "public"."produce_posts" ("id", "farmer_id", "crop_id", "quantity", "expected_price", "location", "posted_at") 
  VALUES 
  ('1cd0cc0b-4fe9-45bd-805e-7151dc5088bb', '0d2ccaf1-b086-45a7-b2a3-dc3498c22de2', '1', '100.00', '50.00', 'Nairobi', '2025-05-26 13:14:39.462241+00'), ('e50ed276-9b4d-4301-b0b8-93edf1c107a6', '0d2ccaf1-b086-45a7-b2a3-dc3498c22de2', '1', '200.00', '100.00', 'Kitale', '2025-05-26 13:01:12.976228+00'), ('fd417557-2332-467a-ad15-1398402b90e6', '0d2ccaf1-b086-45a7-b2a3-dc3498c22de2', '1', '100.00', '50.00', 'Nairobi', '2025-05-26 13:04:09.716197+00');
INSERT INTO "public"."markets" ("id", "name", "location") 
  VALUES 
  ('1', 'Nairobi Market', 'Nairobi'), 
  ('2', 'Kisumu Market', 'Kisumu'), 
  ('3', 'Mombasa Market', 'Mombasa'), 
  ('4', 'Eldoret Market', 'Eldoret'), 
  ('5', 'Nakuru Market', 'Nakuru'), 
  ('6', 'Thika Market', 'Thika'),
  ('7', 'Machakos Market', 'Machakos'),
  ('8', 'Nyeri Market', 'Nyeri'),
  ('9', 'Garissa Market', 'Garissa'), 
  ('10', 'Kitale Market', 'Kitale');

INSERT INTO "public"."alerts" ("id", "farmer_id", "message", "sent_at") VALUES 
  ('d2c6f7eb-9dbd-4d00-bd5e-137a2869e9fa', '0d2ccaf1-b086-45a7-b2a3-dc3498c22de2', 'New produce posted!', '2025-05-26 13:14:39.462241+00');
