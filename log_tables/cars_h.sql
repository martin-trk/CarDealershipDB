CREATE TABLE cars_h(
    id NUMBER,
    dealership_site_id NUMBER,
    manufacturer_id NUMBER,
    engine_id NUMBER,
    model_id NUMBER,
    price NUMBER,
    kilometers NUMBER,
    year_of_manufacture NUMBER,
    color VARCHAR2(10),
    number_of_past_owners NUMBER,
    condition VARCHAR2(15),
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);