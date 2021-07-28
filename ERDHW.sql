-- Creating customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

-- Creating Tickets table
CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	price NUMERIC(4,2)
	
);

--Creating concessions table
CREATE TABLE concessions(
	price NUMERIC(4,2),
	prod_name VARCHAR(100),
	customer_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) 
);

--Creating movies table
CREATE TABLE movies(
	movie_id SERIAL,
	movie_name VARCHAR(100),
	movie_genre VARCHAR(100),
	ticket_id INTEGER,
	FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

--inserting data into a table
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Hong',
	'Gao',
	'555 Circle Dr, Chicago, IL 60611',
	'4242-4242-4242-4242 623 05/22'
);

--insert into tickets
INSERT INTO tickets(
	ticket_id,
	customer_id,
	price
)VALUES(
	101,
	1,
	7.00
)

--insert into concesssions
INSERT INTO concessions(
	price,
	prod_name,
	customer_id
)VALUES(
	5.00,
	'Cheese Popcorn',
	1
)

--insert into movies
INSERT INTO movies(
	movie_id,
	movie_name,
	movie_genre,
	ticket_id
)VALUES(
	666,
	'Black Swan',
	'Musical',
	101
)

