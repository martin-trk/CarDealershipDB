CREATE TABLE cars(
    id NUMBER,
    dealership_site_id NUMBER NOT NULL,
    manufacturer_id NUMBER NOT NULL,
    engine_id NUMBER NOT NULL,
    model_id NUMBER NOT NULL,
    price NUMBER,
    kilometers NUMBER,
    year_of_manufacture NUMBER,
    color VARCHAR2(10),
    number_of_past_owners NUMBER,
    condition VARCHA2(15)
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);