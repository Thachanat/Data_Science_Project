.open reataurant.db

DROP TABLE menus;
DROP TABLE customerorder;
DROP TABLE price;
DROP TABLE brands;
DROP TABLE times;

CREATE TABLE IF NOT EXISTS menus (
  menu_id int,
  menu_name text,
);

CREATE TABLE IF NOT EXISTS customerorder (
  order_id int,
  oeder_name text,
  order_date datetime
  );

CREATE TABLE IF NOT EXISTS price (
  price_id int NOT NULL PRIMARY KEY,
  menu_name text,
  menu_id int,
  price int,
);

CREATE TABLE IF NOT EXISTS brands (
  brand_id int,
  brand_name text
);

CREATE TABLE IF NOT EXISTS times (
  times_id int,
  number_of_times int,
  menu_id int
);

INSERT INTO menus values 
  (1, 'pizza'),
  (2, 'chicken'),
  (3, 'ice_cream');

INSERT INTO customerorder values 
  (1, 'pizza', '20230111'),
  (2, 'chicken', '20230112'),
  (3, 'ice_cream', '20230113');

INSERT INTO price values
  (1, 'ice_cream', 3, 69),
  (2, 'pizza', 1, 299),
  (3, 'chicken', 2, 199);

INSERT INTO brands values
  (1, 'KFC'),
  (2, 'pizza_hut'),
  (3, 'swensens');

INSERT INTO times values
  (1, 30, 1),
  (2, 10, 3),
  (3, 25, 2);

.mode column
.header on

SELECT * FROM menus;
SELECT * FROM customerorder;
SELECT * FROM price;
SELECT * FROM brands;
SELECT * FROM times;

SELECT 
  menu_name,
  price
FROM price
WHERE LOWER(menu_name) = 'pizza';

SELECT 
  order_date as date
FROM customerorder
WHERE order_date = '20230113';

SELECT
  menu_id,
  menu_name
FROM(SELECT * FROM menus WHERE menu_name ='pizza');

SELECT 
  COUNT(*) AS count,
  SUM(price) AS sum,
  MIN(price) AS min,
  MAX(price) AS max
FROM price;

SELECT * FROM menus
JOIN price ON price.menu_id = menus.menu_id
GROUP BY price.price;

with sub as (
    select
          brand_id,
          brand_name
    from brands
)
SELECT brand_name from Sub;
