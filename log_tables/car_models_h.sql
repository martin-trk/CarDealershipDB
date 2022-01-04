CREATE TABLE car_models_h(
    mo_id NUMBER,
    manufacturer_id NUMBER,
    mo_name VARCHAR2(15),
    number_of_doors NUMBER,
    number_of_passangers NUMBER,
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);