--------------------------------------------
---EMPLOYEE ROLES---------------------------
--------------------------------------------

INSERT INTO employee_role (
	sales,
	mechanic ,
	administrative ) values (
		'true',
		'false',
		'false'
);

INSERT INTO employee_role (
	sales,
	mechanic ,
	administrative ) values (
		'false',
		'true',
		'false'
);

INSERT INTO employee_role (
	sales,
	mechanic ,
	administrative ) values (
		'false',
		'false',
		'true'
);

-----------------------------------------------
---ADDRESS-------------------------------------
-----------------------------------------------

INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'278 Bogey Circle',
		'Bountiful',
		'UT',
		84050
);

INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'1168 Cady Lane',
		'Highland',
		'UT',
		84003
);


INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'4697 W Killarney Drive',
		'Highland',
		'UT',
		84003
);

INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'84 W 880 North',
		'Provo',
		'UT',
		84604
);

INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'26b Aberdeen Lane',
		'American Fork',
		'UT',
		84034
);

INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'1440 Sego Lilly Court',
		'St. George',
		'UT',
		84790
);

INSERT INTO address (
	address1,
	city,
	state,
	zipcode ) values (
		'45 E Center Street',
		'Nefi',
		'UT',
		84648
);

-----------------------------------------------
---ACTION--------------------------------------
-----------------------------------------------
INSERT INTO service_action (
	inspection,
	emissions ,
	tires ,
	oil ,
	brakes ,
	windows ,
	windshield ,
	electronics ,
	engine ,
	other ) VALUES (
		'true',
		'true',
		'false',
		'true',
		'false',
		'false',
		'false',
		'false',
		'false',
		'n/a'
);

INSERT INTO service_action (
	inspection,
	emissions ,
	tires ,
	oil ,
	brakes ,
	windows ,
	windshield ,
	electronics ,
	engine ,
	other ) VALUES (
		'false',
		'false',
		'false',
		'false',
		'false',
		'true',
		'false',
		'true',
		'false',
		'n/a'
);

INSERT INTO service_action (
	inspection,
	emissions ,
	tires ,
	oil ,
	brakes ,
	windows ,
	windshield ,
	electronics ,
	engine ,
	other ) VALUES (
		'false',
		'false',
		'true',
		'true',
		'false',
		'false',
		'false',
		'false',
		'true',
		'n/a'
);

-----------------------------------------------
---INVENTORY-----------------------------------
-----------------------------------------------

INSERT INTO inventory (
	make,
	model ,
	car_year ,
	new_car ,
	last_service ,
	car_price ) VALUES (
		'Telsa',
		'Model X',
		2023,
		'true',
		'2023-07-01',
		108490
);

INSERT INTO inventory (
	make,
	model ,
	car_year ,
	new_car ,
	last_service ,
	car_price ) VALUES (
		'Rivian',
		'R1T',
		2023,
		'true',
		'2023-07-01',
		93350
);

INSERT INTO inventory (
	make,
	model ,
	car_year ,
	new_car ,
	last_service ,
	car_price ) VALUES (
		'Acura',
		'ILX',
		2017,
		'false',
		'2023-02-22',
		19595
);

INSERT INTO inventory (
	make,
	model ,
	car_year ,
	new_car ,
	last_service ,
	car_price ) VALUES (
		'Hyundai',
		'Palisade',
		2022,
		'false',
		'2023-05-06',
		44995
);


-----------------------------------------------
---INVENTORY-----------------------------------
-----------------------------------------------

INSERT INTO employee (
	first_name,
	last_name,
	phone,
	email,
	is_manager ,
	address_id ,
	employee_role_id ) VALUES (
		'Dallin',
		'Wilson',
		6765855,
		'surfin_dalbert@futbol.com',
		'false',
		1,
		1
);

INSERT INTO employee (
	first_name,
	last_name,
	phone,
	email,
	is_manager ,
	address_id ,
	employee_role_id ) VALUES (
		'Maggie',
		'Balmforth',
		2286474,
		'maggleb@ultraline.com',
		'false',
		2,
		2
);

INSERT INTO employee (
	first_name,
	last_name,
	phone,
	email,
	is_manager ,
	address_id ,
	employee_role_id ) VALUES (
		'Tyler',
		'Wilson',
		7877720,
		'twilson@gmail.com',
		'true',
		3,
		3
);


-----------------------------------------------
---CUSTOMERS-----------------------------------
-----------------------------------------------
INSERT INTO customer (
	first_name ,
	last_name ,
	address_id ) VALUES (
		'David',
		'Wilson',
		4
);

INSERT INTO customer (
	first_name ,
	last_name ,
	address_id ) VALUES (
		'Megan',
		'Wilson',
		4
);

INSERT INTO customer (
	first_name ,
	last_name ,
	address_id ) VALUES (
		'Philip',
		'Lamoreaux',
		5
);

INSERT INTO customer (
	first_name ,
	last_name ,
	address_id ) VALUES (
		'Katlyn',
		'Reiley',
		6
);

SELECT * FROM customer c ;


-----------------------------------------------
---SERVICE-------------------------------------
-----------------------------------------------

INSERT INTO car_service (
	make,
	model,
	color ,
	car_year,
	mileage ,
	service_action_id ) VALUES (
		'Kia',
		'Sedona',
		'red',
		2017,
		54550,
		1
);

INSERT INTO car_service (
	make,
	model,
	color ,
	car_year,
	mileage ,
	service_action_id ) VALUES (
		'Honda',
		'Odessey',
		'white',
		2015,
		84633,
		2
);

INSERT INTO car_service (
	make,
	model,
	color ,
	car_year,
	mileage ,
	service_action_id ) VALUES (
		'Volkswagen',
		'Passat',
		'dark blue',
		2008,
		120755,
		3
);


-----------------------------------------------
---SERVICE-------------------------------------
-----------------------------------------------

INSERT INTO dealership (
	manager_id,
	address_id ) VALUES (
		3,
		7
);


-----------------------------------------------
---PURCHASE TYPE-------------------------------
-----------------------------------------------

INSERT INTO purchase_type (
	car_service_id) VALUES (
		1
);

INSERT INTO purchase_type (
	car_service_id) VALUES (
		2
);

INSERT INTO purchase_type (
	car_service_id) VALUES (
		3
);

INSERT INTO purchase_type (
	inventory_id) VALUES (
		1
);

INSERT INTO purchase_type (
	inventory_id) VALUES (
		2
);

INSERT INTO purchase_type (
	inventory_id) VALUES (
		3
);

INSERT INTO purchase_type (
	inventory_id) VALUES (
		4
);


-----------------------------------------------
---PURCHASE------------------------------------
-----------------------------------------------

INSERT INTO purchase (
	customer_id,
	purchase_type_id ) VALUES (
		1,
		4
);

INSERT INTO purchase (
	customer_id,
	purchase_type_id ) VALUES (
		2,
		3
);

INSERT INTO purchase (
	customer_id,
	purchase_type_id ) VALUES (
		3,
		1
);

INSERT INTO purchase (
	customer_id,
	purchase_type_id ) VALUES (
		4,
		2
);

SELECT * FROM customer c ;

INSERT INTO purchase (
	customer_id,
	purchase_type_id ) VALUES (
		2,
		6
);

INSERT INTO purchase (
	customer_id,
	purchase_type_id ) VALUES (
		2,
		7
);


-----------------------------------------------
---INVOICE-------------------------------------
-----------------------------------------------

INSERT INTO invoice (
	employee_id,
	customer_id,
	purchase_id,
	total_price) VALUES (
		1,
		1,
		1,
		98650
);

INSERT INTO invoice (
	employee_id,
	customer_id,
	purchase_id,
	total_price) VALUES (
		1,
		2,
		2,
		112336
);

INSERT INTO invoice (
	employee_id,
	customer_id,
	purchase_id,
	total_price) VALUES (
		2,
		3,
		3,
		220
);

INSERT INTO invoice (
	employee_id,
	customer_id,
	purchase_id,
	total_price) VALUES (
		2,
		4,
		4,
		400
);

SELECT * FROM invoice;

INSERT INTO invoice (
	employee_id,
	customer_id,
	purchase_id,
	total_price) VALUES (
		1,
		2,
		5,
		49995
);

INSERT INTO invoice (
	employee_id,
	customer_id,
	purchase_id,
	total_price) VALUES (
		2,
		2,
		6,
		620
);

-----------------------------------------------
---CUSTOMER HISTORY----------------------------
-----------------------------------------------

INSERT INTO customer_history (
	customer_id,
	invoice_id ) VALUES (
		2,
		2
);

INSERT INTO customer_history (
	customer_id,
	invoice_id ) VALUES (
		2,
		5
);

INSERT INTO customer_history (
	customer_id,
	invoice_id ) VALUES (
		2,
		6
);