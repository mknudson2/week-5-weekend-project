CREATE TABLE employee_role (
	employee_role_id SERIAL PRIMARY KEY,
	sales BOOL,
	mechanic BOOL,
	administrative BOOL
);

CREATE TABLE address (
	address_id SERIAL PRIMARY KEY,
	address1 VARCHAR,
	address2 VARCHAR,
	city VARCHAR,
	state VARCHAR,
	zipcode INT
);

CREATE TABLE service_action (
	service_action_id SERIAL PRIMARY KEY,
	inspection BOOL,
	emissions BOOL,
	tires BOOL,
	oil BOOL,
	brakes BOOL,
	windows BOOL,
	windshield BOOL,
	electronics BOOL,
	engine BOOL,
	other VARCHAR
);

CREATE TABLE inventory (
	inventory_id SERIAL PRIMARY KEY,
	make VARCHAR,
	model VARCHAR,
	car_year INT,
	new_car BOOL,
	last_service DATE,
	car_price INT
);

CREATE TABLE employee (
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	phone INT,
	email VARCHAR,
	is_manager BOOL,
	address_id INT,
	employee_role_id INT,
	FOREIGN KEY (address_id) REFERENCES address (address_id),
	FOREIGN KEY (employee_role_id) REFERENCES employee_role (employee_role_id)
);

CREATE TABLE customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	address_id INT,
	FOREIGN KEY (address_id) REFERENCES address (address_id) 
);

SELECT * FROM address a ;

CREATE TABLE car_service (
	car_service_id SERIAL PRIMARY KEY,
	make VARCHAR,
	model VARCHAR,
	color VARCHAR,
	car_year INT,
	mileage INT,
	service_action_id INT,
	FOREIGN KEY (service_action_id) REFERENCES service_action (service_action_id)
);

SELECT * FROM car_service ;

CREATE TABLE dealership (
	dealership_id SERIAL PRIMARY KEY ,
	employee_id INT,
	address_id INT,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY (address_id) REFERENCES address(address_id)
);
ALTER TABLE dealership
RENAME COLUMN employee_id TO manager_id

SELECT * FROM address a  ;


CREATE TABLE purchase_type (
	purchase_type_id SERIAL PRIMARY KEY,
	car_service_id INT,
	inventory_id INT,
	FOREIGN KEY (purchase_type_id) REFERENCES purchase_type(purchase_type_id),
	FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

SELECT * FROM inventory i ;

CREATE TABLE purchase (
	purchase_id SERIAL PRIMARY KEY,
	customer_id INT,
	purchase_type_id INT,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY  (purchase_type_id) REFERENCES purchase_type (purchase_type_id)
);

SELECT * FROM purchase  ;

CREATE TABLE invoice (
	invoice_id SERIAL PRIMARY KEY,
	employee_id INT,
	customer_id INT,
	purchase_id INT,
	total_price INT,
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY  (purchase_id) REFERENCES purchase (purchase_id)
);

CREATE TABLE customer_history (
	customer_history_id SERIAL PRIMARY KEY,
	customer_id INT,
	invoice_id INT
);

SELECT * FROM purchase_type;