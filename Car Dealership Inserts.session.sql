INSERT INTO customer(first_name, last_name, phone_number)
VALUES
('Jim','Smith','2819351234'),
('Sam','Lee','2819353568'),
('Bob','Billy','2819359402'),
('John','Steel','2819358943'),
('Tim','Apple','2819353295');

INSERT INTO salesperson(first_name, last_name)
VALUES
('Raul','Cruz'),
('Juan','Hernadez'),
('Danny','Turner'),
('Mike','Spencer'),
('Seb','Sandoz');

INSERT INTO car(vin, make, model, price)
VALUES
('9485763920','Toyota','Corolla', 16000),
('2082346723','Toyota','Camry', 28000),
('6782312344','Toyota','Tacoma', 45000),
('8092384523','Toyota','Corolla', 22000),
('4589345473','Toyota','highlander', 35000);

INSERT INTO invoice(invoice_amount, car_id, customer_id, salesperson_id)
VALUES
(16000, 1, 1, 1),
(28000, 2, 4, 1),
(45000, 3, 3, 2),
(22000, 4, 5, 3),
(35000, 5, 2, 4);

INSERT INTO mechanic(first_name, last_name)
VALUES
('Adrian','Gil'),
('James','Ramos'),
('Tom','Rodriguez'),
('Lewis','William'),
('Frank','Taylor');

INSERT INTO car_part(part_num, part_name, price)
VALUES
('0000000001','Front Bumber', 300),
('0000000002', 'Radiator', 170),
('0000000003','Air Filter', 20),
('0000000004','Transmisson', 4000),
('0000000005','Spark Plug', 10);

INSERT INTO service_ticket(service_amount, car_part, car_id, customer_id, mechanic_id, car_part__id)
VALUES
(150,'Spark Plug', 3, 3, 5, 5),
(7000,'Transmission', 4, 5, 1, 4),
(50,'Air Filter', 1, 1, 2, 3),
(50,'Air Filter', 2, 4, 2, 3),
(500,'Front Bumber', 5, 2, 3, 1);