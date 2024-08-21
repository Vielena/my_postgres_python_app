   CREATE TABLE test_table (
       id SERIAL PRIMARY KEY,
       name VARCHAR(10) CHECK (CHAR_LENGTH(name) BETWEEN 4 AND 10),
       surname VARCHAR(255),
       city VARCHAR(255),
       age INT CHECK (age >= 0 AND age <= 150)
   );

   INSERT INTO test_table (name, surname, city, age) VALUES
   ('John', 'Doe', 'New York', 25),
   ('Jane', 'Smith', 'Los Angeles', 30),
   ('Tommy', 'Brown', 'Chicago', 22),
   ('Anna', 'Johnson', 'Houston', 35),
   ('Mike', 'Davis', 'Phoenix', 40),
   ('Sara', 'Miller', 'San Antonio', 28),
   ('Bobby', 'Wilson', 'San Diego', 50),
   ('Kate', 'Moore', 'Dallas', 29),
   ('Jimmmy', 'Taylor', 'San Jose', 32),
   ('Lily', 'Anderson', 'Austin', 45);
   
