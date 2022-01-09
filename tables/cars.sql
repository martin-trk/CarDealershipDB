CREATE TABLE cars(
    id NUMBER,
    dealership_site_id NUMBER NOT NULL,
    engine_id NUMBER NOT NULL,
    model_id NUMBER NOT NULL,
    price NUMBER NOT NULL,
    kilometers NUMBER,
    year_of_manufacture NUMBER NOT NULL,
    color VARCHAR2(30) NOT NULL,
    number_of_past_owners NUMBER,
    condition VARCHAR2(15) NOT NULL,
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);