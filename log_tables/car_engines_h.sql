CREATE TABLE car_engines_h(
    en_id NUMBER,
    en_name VARCHAR2,
    engine_displacement NUMBER,
    performance NUMBER,
    gear NUMBER,
    fuel VARCHAR2(10),
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);