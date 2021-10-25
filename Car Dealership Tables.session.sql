CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
    phone_number VARCHAR(15)
);
CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);
CREATE TABLE car(
	car_id SERIAL PRIMARY KEY,
    vin VARCHAR(50),
    make VARCHAR(50),
    model VARCHAR(50),
    price NUMERIC(5,0)
);
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE DEFAULT CURRENT_DATE,
    invoice_amount NUMERIC(5,0),
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    salesperson_id INTEGER NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id) ON DELETE CASCADE
);
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);
CREATE TABLE car_part(
    car_part__id SERIAL PRIMARY KEY,
	part_num VARCHAR(10),
	part_name VARCHAR(50),
    price NUMERIC(5,0)
);
CREATE TABLE service_ticket(
	service_id SERIAL PRIMARY KEY,
    service_date DATE DEFAULT CURRENT_DATE,
    service_amount NUMERIC(5,0),
    car_part VARCHAR(50),
    car_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
    mechanic_id INTEGER NOT NULL,
    car_part__id INTEGER NOT NULL,
	FOREIGN KEY (car_id) REFERENCES car(car_id) ON DELETE CASCADE,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id) ON DELETE CASCADE,
    FOREIGN KEY (car_part__id) REFERENCES car_part(car_part__id) ON DELETE CASCADE
);