CREATE TABLE dim_rental (
    rental_id int,
	rental_date date,
	inventory_id int,
	customer_id int,
	return_date date,
	staf_id int,
	last_update date,
	PRIMARY KEY (rental_id)
);
CREATE TABLE dim_staff(
	staff_id int,
	first_name char,
	last_name char,
	adress_id int,
	email varchar,
	store_id int,
	active bit,
	username varchar,
	[password] varchar,
	last_update date,
	picture image,
	PRIMARY KEY (staff_id)
	   	 );
CREATE TABLE dim_inventory(
	inventory_id int,
	film_id int,
	store_id int,
	last_update date,
	PRIMARY KEY (inventory_id)
	);
CREATE TABLE fct_actor(
	actor_id int,
	first_name char,
	last_name char,
	last_update date,
	PRIMARY KEY (actor_id)
);
CREATE TABLE fct_category(
	category_id int,
	[name] char,
	last_update date,
	PRIMARY KEY (category_id)
);
CREATE TABLE fct_film_category(
	film_id int,
	category_id int,
	last_update date,
	PRIMARY KEY (film_id)
);
CREATE TABLE dim_film(
	film_id int,
	title varchar,
	[description] text,
	release_year date,
	language_id varchar,
	rental_duration int,
	rental_rate int,
	[length] int,
	replacement_cost int,
	rating int,
	last_update date,
	special_features bit,
	[fulltext] text,
	PRIMARY KEY (film_id)
);
CREATE TABLE fct_language(
	language_id int,
	[name] varchar,
	last_update date,
	PRIMARY KEY (language_id)
);
CREATE TABLE fct_film_actor(
	actor_id int,
	film_id int,
	last_update date,
	PRIMARY KEY (actor_id)
);
CREATE TABLE dim_customer(
	customer_id int,
	store_id int,
	first_name char,
	last_name char,
	email varchar,
	adress_id varchar,
	activebool bit,
	create_date date,
	last_update date,
	active bit,
	PRIMARY KEY (customer_id)
);
CREATE TABLE fct_address(
	address_id int,
	[address] varchar,
	address2 varchar,
	district text,
	city_id int,
	postal_code varchar,
	phone int,
	last_update date,
	PRIMARY KEY (address_id)
);
CREATE TABLE fct_city(
	city_id int,
	city char,
	country_id int,
	last_update date,
	PRIMARY KEY (city_id)
);
CREATE TABLE fct_country(
	country_id int,
	country char,
	last_update date,
	PRIMARY KEY (country_id)
);
CREATE TABLE dim_store(
	store_id int,
	manager_staff_id int,
	address_id int,
	last_update date,
	PRIMARY KEY (store_id)
);

