CREATE DATABASE more_advanced;
\connect more_advanced;

CREATE TABLE customers
(
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INTEGER,
  country TEXT,
  salary INTEGER
);

INSERT INTO customers
  (name, age, country, salary)
VALUES
  ('Bira', 32, 'Brazil', 2000);

INSERT INTO customers
  (name, age, country, salary)
VALUES
  ('Kaushik', 23, 'Kota', 2000);

INSERT INTO customers
  (name, age, country, salary)
VALUES
  ('Ramesh', 25, null, 1500);

INSERT INTO customers
  (name, age, country, salary)
VALUES
  ('Kaushik', 25, 'Mumbai', null);

INSERT INTO customers
  (name, age, country, salary)
VALUES
  ('Amelia', 27, 'England', 8500);

INSERT INTO customers
  (name, age, country, salary)
VALUES
  ('Silvana', null, null , 4500);

CREATE TABLE orders
(
  id SERIAL PRIMARY KEY,
  order_num TEXT,
  amount DECIMAL,
  customer_id INTEGER REFERENCES customers(id)
);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('A2067O', 104.09 , 1);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('J9899P', 50.54 , 1);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('N2337B', 954.66 , 1);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('A7786C', 66.33 , 2);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('F5400B', 403.54 , 3);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('F5298H', 669.84 , 3);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('L7800M', 200.03 , 3);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('J5454G', 44.30 , 4);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('F9802B', 43.54 , 6);

INSERT INTO orders
  (order_num, amount, customer_id)
VALUES
  ('B7780B', 182.72 , 6);


