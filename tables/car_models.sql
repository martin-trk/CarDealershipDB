CREATE TABLE car_models(
    mo_id NUMBER,
    manufacturer_id NUMBER NOT NULL,
    mo_name VARCHAR2(15) NOT NULL,
    number_of_doors NUMBER NOT NULL,
    number_of_passangers NUMBER NOT NULL,
    weight NUMBER NOT NULL,
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);