CREATE TABLE car_manufacturers_h(
    ma_id NUMBER,
    ma_name VARCHAR2(15),
    mod_user VARCHAR2(300),
	created_on TIMESTAMP(6),
	last_mod TIMESTAMP(6),
	dml_flag VARCHAR2(1),
	version NUMBER
);