CREATE TABLE car_engines(
    en_id NUMBER,
    en_name VARCHAR2(15) NOT NULL,
    engine_displacement NUMBER NOT NULL,
    performance NUMBER NOT NULL,
    gear NUMBER,
    fuel VARCHAR2(10) NOT NULL,
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);